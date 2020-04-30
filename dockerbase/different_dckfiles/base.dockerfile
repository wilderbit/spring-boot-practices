FROM alpine:edge
RUN apk add --no-cache openjdk11

FROM maven:3.6.0-jdk-11-slim AS build

COPY ./pom.xml ./pom.xml

RUN mvn dependency:go-offline -B

# Run it and create the base image
# This image will containe jdk and maven
# docker build --tag=alpine-java:base --rm=true .

# from root directory
# docker build -f dockerbase/different_dckfiles/base.dockerfile --tag=alpine-java:base --rm=true .