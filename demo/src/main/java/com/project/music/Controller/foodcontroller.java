package com.project.music.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.food.fooddelivery.service.foodservice;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.*;

@Controller
public class foodcontroller {

    @Autowired
    private foodservice service;

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/index")
    public String index() {
        return "index";
    }
        

}
