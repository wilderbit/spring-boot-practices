package com.spring.example.pojo.request;

import com.fasterxml.jackson.annotation.JsonProperty;

public class ItemRequest {

    @JsonProperty(value = "name")
    private String name;
    @JsonProperty(value = "price")
    private Double price;

    public String getName() {
        return name;
    }

    public Double getPrice() {
        return price;
    }
}
