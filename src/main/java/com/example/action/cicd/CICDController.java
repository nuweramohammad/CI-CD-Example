package com.example.action.cicd;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CICDController {

    @GetMapping("/")
    public ResponseEntity<String> printMyName(){
        return ResponseEntity.ok().body("Nuwera Mohammad 123");
    }
}
