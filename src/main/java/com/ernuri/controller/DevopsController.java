package com.ernuri.controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;


@RestController
@RequestMapping
public class DevopsController {


    @GetMapping
    public String devopsHello(){
        return " Hello Devops";
    }


    @GetMapping("info")
    public String info() {
        return "İnfo : " + LocalDateTime.now();
    }

}
