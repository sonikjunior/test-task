package ru.khasbatov.dbservice.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DbController {

    @GetMapping("/get")
    public ResponseEntity<String> hello() {
        return ResponseEntity.ok("hello");
    }
}
