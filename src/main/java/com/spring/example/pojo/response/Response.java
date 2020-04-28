package com.spring.example.pojo.response;

import org.springframework.http.HttpStatus;

public class Response {

    boolean success;
    HttpStatus status;

    public Response setSuccess(boolean success) {
        this.success = success;
        return this;
    }

    public Response setStatus(HttpStatus status) {
        this.status = status;
        return this;
    }

    public boolean isSuccess() {
        return success;
    }

    public HttpStatus getStatus() {
        return status;
    }
}
