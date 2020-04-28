package com.spring.example.controller;

import com.spring.example.pojo.response.Response;
import com.spring.example.pojo.response.Success;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/v1")
public class ItemController {

    @PostMapping(value = "/api/item/create")
    public ResponseEntity<Response> createItem() {
        return Success.ok("item created");
    }

    @GetMapping(value = "/api/item/get")
    public ResponseEntity<Response> getItem() {
        return Success.ok("");
    }
}
