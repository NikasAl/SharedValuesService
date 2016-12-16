package ru.electronikas.svs.dao;


import ru.electronikas.svs.domain.Parameter;

import java.util.List;

public interface ParameterDAO {

    public void add(Parameter parameter);

    public List<Parameter> listParametersByUser(String user);

    void delete(Integer wordId);
   }