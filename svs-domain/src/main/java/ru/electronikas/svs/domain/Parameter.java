package ru.electronikas.svs.domain;

import java.io.Serializable;

public class Parameter implements Serializable {

    private String name;

    private String value;

    public Parameter(String name, String value) {
        this.name = name;
        this.value = value;
    }

    public Parameter() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

}
