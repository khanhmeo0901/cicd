package org.example;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {
    @GetMapping("/hello")
    public String hello(){
        return "Study Jenkis";
    }

    @GetMapping("/hello2")
    public String hello2(){
        return "Study Jenkis 2";
    }
}
