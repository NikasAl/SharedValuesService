package ru.electronikas.svs.domain;

import java.io.Serializable;

/**
 * Created by navdonin on 27/06/15.
 */
public class ConfigRequest implements Serializable{

    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
