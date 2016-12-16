package ru.electronikas.svs.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import ru.electronikas.svs.domain.ConfigRequest;
import ru.electronikas.svs.domain.Parameter;
import ru.electronikas.svs.domain.Parameters;
import ru.electronikas.svs.service.ParameterService;

import java.util.concurrent.ExecutionException;

@Controller
@RequestMapping(produces = MediaType.APPLICATION_JSON_VALUE)
public class ParameterController {

    @Autowired
    private ParameterService parameterService;

    @RequestMapping(value = "/parameter", method = RequestMethod.POST)
    @ResponseStatus(HttpStatus.OK)
    @ResponseBody
    public Parameter parameter(@RequestBody Parameter parameter) throws InterruptedException, ExecutionException {

        parameter.setValue(parameterService.getValueByName(parameter.getName()));

//        if(parameter.getName().equals("Tank3DAdType"))
//            parameter.setValue("AdMob");

        return parameter;
    }

    @RequestMapping(value = "/parameters", method = RequestMethod.POST)
    @ResponseStatus(HttpStatus.OK)
    @ResponseBody
    public Parameters parameters(@RequestBody ConfigRequest configRequest) throws InterruptedException, ExecutionException {

        return parameterService.getParmetersByConfig(configRequest);
    }

}
