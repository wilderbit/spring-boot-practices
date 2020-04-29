FROM alpine:edge
RUN apk add --no-cache openjdk11

FROM maven:3.6.0-jdk-11-slim AS build

COPY ./pom.xml ./pom.xml

RUN mvn dependency:go-offline -B

# For build it
#docker build --tag=alpine-java:base --rm=true .

#FROM alpine:edge
#MAINTAINER baeldung.com
#RUN apk add --no-cache openjdk11
#COPY files/UnlimitedJCEPolicyJDK8/* /usr/lib/jvm/java-1.8-openjdk/jre/lib/security/