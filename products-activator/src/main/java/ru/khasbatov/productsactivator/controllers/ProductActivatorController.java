package ru.khasbatov.productsactivator.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
public class ProductActivatorController {

    @GetMapping("/activate")
    public void hello() {
        RestTemplate restTemplate = new RestTemplate();

        String str = restTemplate.getForObject("http://localhost:8081/get", String.class);

        System.out.println(str);
    }
}
