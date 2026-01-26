package com.ernuri.controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class DevopsController {


    @GetMapping
    public String devopsHello(){
        return " Hello Devops";
    }


    @GetMapping
    public String info() {
        return "Hello Devops!";
    }

}
