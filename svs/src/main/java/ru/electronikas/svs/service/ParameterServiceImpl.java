package ru.electronikas.svs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.electronikas.svs.domain.ConfigRequest;
import ru.electronikas.svs.domain.Parameter;
import ru.electronikas.svs.domain.Parameters;

import javax.servlet.ServletContext;
import java.io.*;
import java.util.HashMap;
import java.util.Map;

@Service
public class ParameterServiceImpl implements ParameterService {

    private Map<String, String> parametersMap = new HashMap<String, String>();
    private Parameters parameters;

    @Autowired
    ServletContext servletContext=null;

    String DB_FILE = "svsDB.txt";

    public void add(Parameter parameter) {
        parametersMap.put(parameter.getName(), parameter.getValue());
        saveDataToFileDB();
    }

    public void remove(String key) {
        parametersMap.remove(key);
        saveDataToFileDB();
    }

    public Map<String, String> getParametersMap() {
        return parametersMap;
    }

    @Override
    public Parameters getParmetersByConfig(ConfigRequest configRequest) {
        if (parameters==null) {
            loadDataToMapFromFileDB();
            parameters = new Parameters(parametersMap);
        }
        return parameters;
    }

    @Override
    public void clearSpace() {
        parameters = null;
        parametersMap.clear();
    }

    public String getValueByName(String name) {
        if (parametersMap.isEmpty()) loadDataToMapFromFileDB();
        return parametersMap.get(name);
    }

    private String getFullPathToDB() {
        String filePathToGraphsDir = servletContext.getRealPath("/");
        return filePathToGraphsDir + "/" + DB_FILE;
    }

    private void loadDataToMapFromFileDB() {
        BufferedReader br;
        try {
            br = new BufferedReader(new FileReader(getFullPathToDB()));
            String line = br.readLine();

            while (line != null) {

                String name = line.split(",")[0];
                String value = line.split(",")[1];
                parametersMap.put(name, value);

                line = br.readLine();
            }

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void saveDataToFileDB() {
        PrintWriter writer;
        try {
            writer = new PrintWriter(getFullPathToDB(), "UTF-8");
            for(String key : parametersMap.keySet()) {
                writer.println(key+","+parametersMap.get(key));
            }
            writer.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

}
