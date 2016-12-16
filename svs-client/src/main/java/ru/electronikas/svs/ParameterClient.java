package ru.electronikas.svs;

import org.json.JSONArray;
import org.json.JSONObject;
import ru.electronikas.svs.domain.Parameter;
import ru.electronikas.svs.domain.Parameters;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * Created by navdonin on 23/06/15.
 */
public class ParameterClient {

    String name;

    public static void main(String[] args) throws Exception {

        ParameterClient parameterClient = new ParameterClient("Tank3D");
        Parameters parameters = parameterClient.getAll();
        System.out.print(parameters.getParameterByName("Tank3DAdType").getValue());
        System.out.print(parameters.getParameterByName("Tank3DisMoti").getValue());

    }

    public ParameterClient(String name) {
        this.name = name;
    }

    public Parameters getAll() throws Exception {
        String jsonResponse = sendPost(makeJsonByName(name));
        JSONObject jsonObj = new JSONObject(jsonResponse);
        Parameters parameters = new Parameters();
        JSONArray jarr = jsonObj.getJSONArray("parameters");
        for(int i=0; i<jarr.length(); i++) {
            JSONObject parameterJsonObj = jarr.getJSONObject(i);
            parameters.getParameters().add(new Parameter(parameterJsonObj.getString("name"), parameterJsonObj.getString("value")));
        }
        return parameters;
    }

    private String makeJsonByName(String name) {
        return  "{\n" +
                "\"name\":\"" + name + "\"\n" +
                "}";
    }

    // HTTP POST request
    private String sendPost(String json) throws Exception {

        String url = "http://electronikas.ru:3009/svs/parameters";
//        String url = "http://localhost:8080/parameters";
        URL object = new URL(url);
        HttpURLConnection con = (HttpURLConnection) object.openConnection();
        con.setDoOutput(true);
        con.setDoInput(true);
        con.setRequestProperty("Content-Type", "application/json");
        con.setRequestProperty("Accept", "application/json");
        con.setRequestMethod("POST");

        OutputStreamWriter wr = new OutputStreamWriter(con.getOutputStream());

        wr.write(json);

        wr.flush();

//display what returns the POST request

        StringBuilder sb = new StringBuilder();

        int HttpResult = con.getResponseCode();

        String response = "";
        if (HttpResult == HttpURLConnection.HTTP_OK) {

            BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"));

            String line = null;

            while ((line = br.readLine()) != null) {
                sb.append(line + "\n");
            }

            br.close();

            response = sb.toString();

        } else {
            response = con.getResponseMessage();
        }
        return response;
    }


}
