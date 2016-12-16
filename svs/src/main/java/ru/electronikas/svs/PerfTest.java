package ru.electronikas.svs;

import com.beust.jcommander.JCommander;
import com.beust.jcommander.Parameter;
import com.beust.jcommander.ParameterException;
import com.codahale.metrics.ConsoleReporter;
import com.codahale.metrics.Histogram;
import com.codahale.metrics.Meter;
import com.codahale.metrics.MetricRegistry;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.methods.PostMethod;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class PerfTest {

    private static class Arguments {

        @Parameter(names = {"-e", "--endpoint"}, required = false)
        String serviceUri = "http://electronikas.ru:3009";

        @Parameter(names = {"-t", "--threads"}, required = false)
        int threads = 80;
        @Parameter(names = {"-d", "--duration"}, required = false)
        int durationMinutes = 1;

        @Parameter(names = {"--warmup"}, required = false)
        boolean warmup = false;
    }

    private final Arguments args;
    private List<Integer> skus;
    private volatile boolean finished = false;
    private MetricRegistry metricRegistry;
    private final String endpointUri;

    PerfTest(Arguments args) throws Exception {
        this.args = args;
        metricRegistry = new MetricRegistry();
        endpointUri = args.serviceUri + "/svs/parameter";
    }

    void loadData() throws SQLException {
        System.out.println("loading data");
    }

    void warmup() {
    }

    void run() {
        System.out.println("running the test");

        final Meter requestsMeter = metricRegistry.meter(MetricRegistry.name(getClass(), "requests"));
        final Histogram requestsHisto = metricRegistry.histogram(MetricRegistry.name(getClass(), "requests-latency"));

        Thread[] workers = new Thread[args.threads];
        for (int i = 0; i < workers.length; i++) {
            workers[i] = new Thread() {

                @Override
                public void run() {
                    int count = 0;
                    HttpClient httpClient = new HttpClient();

                    while (!finished) {
                        String requestBody = createNextRequest();
                        long startedAt = System.currentTimeMillis();
                        String response = runRequest(requestBody, httpClient);
                        requestsHisto.update(System.currentTimeMillis() - startedAt);
                        requestsMeter.mark();

                        count++;
                        if (count % 100000 == 0) {
                            System.out.println("NOTE: count % 100000st response body:\n" + response);
                        }
                    }
                }

            };
            workers[i].setDaemon(false);
            workers[i].start();
        }

        try {
            Thread.sleep(args.durationMinutes * 60 * 1000);
        } catch (InterruptedException e) {
        }
        finished = true;

        for (Thread worker : workers) {
            try {
                worker.join();
            } catch (InterruptedException e) {
            }
        }
    }

    private String createNextRequest() {
        return "{\n" +
                "\"name\":\"Tank3DAdType\"\n" +
                "}";
    }

    private String runRequest(String body, HttpClient httpClient) {
        PostMethod method = new PostMethod(endpointUri);

        method.addRequestHeader("Content-Type", "application/json");
        method.setRequestBody(body);

        int responseCode;
        try {
            responseCode = httpClient.executeMethod(method);
            String responseBody = method.getResponseBodyAsString();
            if (responseCode != 200) {
                throw new RuntimeException("Error " + responseCode + ": " + responseBody);
            } else if (responseBody.contains("NO_DATA_FOUND")) {
                System.out.println(responseBody);
            }
            method.releaseConnection();
            return responseBody;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    void report() {
        final ConsoleReporter reporter = ConsoleReporter.forRegistry(metricRegistry)
                .convertRatesTo(TimeUnit.SECONDS)
                .convertDurationsTo(TimeUnit.MILLISECONDS)
                .build();
        reporter.report();
    }

    public static void main(String[] argv) throws Exception {
        Arguments args = new Arguments();
        JCommander cmd = new JCommander(args);
        try {
            cmd.parse(argv);
        } catch (ParameterException e) {
            System.out.println(e.getMessage());
            cmd.usage();
            return;
        }

        PerfTest test = new PerfTest(args);
        test.loadData();
        test.warmup();
        test.run();
        test.report();
    }
}
