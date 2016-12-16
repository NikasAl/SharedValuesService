package ru.electronikas.svs.service;

import ru.electronikas.svs.domain.ConfigRequest;
import ru.electronikas.svs.domain.Parameter;
import ru.electronikas.svs.domain.Parameters;

import java.util.Map;

public interface ParameterService {

    public void add(Parameter parameter);

    public void remove(String key);

    String getValueByName(String name);

    public Map<String, String> getParametersMap();

    Parameters getParmetersByConfig(ConfigRequest configRequest);

    void clearSpace();
}
