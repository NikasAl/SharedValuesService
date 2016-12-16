package ru.electronikas.svs.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by navdonin on 27/06/15.
 */
public class Parameters implements Serializable {

    private List<Parameter> parameters = new ArrayList<Parameter>();

    public Parameters() {
    }

    public Parameters(Map<String, String> parametersMap) {
        for(String key : parametersMap.keySet())
            parameters.add(new Parameter(key, parametersMap.get(key)));
    }

    public Parameter getParameterByName(String parameterName) {
        for (Parameter parameter : parameters) {
            if(parameter.getName().equals(parameterName)) return parameter;
        }
        return null;
    }

    public List<Parameter> getParameters() {
        return parameters;
    }

    public void setParameters(List<Parameter> parameters) {
        this.parameters = parameters;
    }
}
