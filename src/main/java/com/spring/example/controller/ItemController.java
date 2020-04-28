package com.spring.example.controller;

import com.spring.example.pojo.request.ItemRequest;
import com.spring.example.pojo.response.Response;
import com.spring.example.pojo.response.Success;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/v1")
public class ItemController {

    @PostMapping(value = "/api/item/create")
    public ResponseEntity<Response> createItem(@Valid @NotNull @RequestBody ItemRequest item) {
        return Success.ok(item);
    }

    @GetMapping(value = "/api/item/get")
    public ResponseEntity<Response> getItem() {
        return Success.ok(new ItemRequest());
    }
}
