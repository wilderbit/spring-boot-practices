package com.spring.example.pojo.response;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

public class Success<T> extends Response {

    private T data;

    public static <T> ResponseEntity<Response> ok(T data) {
        return ResponseEntity.ok(
            new Success<>()
                .setData(data)
                .setStatus(HttpStatus.OK)
                .setSuccess(true)
        );
    }

    public Success<T> setData(T data) {
        this.data = data;
        return this;
    }

    public T getData() {
        return data;
    }
}
