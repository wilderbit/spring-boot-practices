# In this approach it is simply copy jar files to container and run it

# For Java 8, try this
# FROM openjdk:8-jdk-alpine

FROM adoptopenjdk/openjdk11:alpine-jre
# Changed the working directory
# cd /opt/app
WORKDIR /opt/app
# Refer to Maven build -> finalName
ARG JAR_FILE=target/spring-boot-practices-0.0.1-SNAPSHOT.jar

# cp spring-boot-web.jar /opt/app/app.jar
COPY ${JAR_FILE} app.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]

# Build an image
# docker build -t name:tag .

# Running from base directory
# docker build -f dockerbase/basic_approach/Dockerfile -t approach_1:latest .

# Run container
# docker run -d -p 8080:8080 -t spring-boot:1.0

# Run it
# docker run -d --name=finacko_server --publish=8080:8080 approach_1:latest

# List of all containers
# docker ps

# Push Docker image to docker hub
# docker image tag spring-boot:1.0 your_id/spring-boot:1.0
# docker image push your_id/spring-boot:1.0

# Pull docker from hub
# docker pull your_id/spring-boot:1.0
# docker run -d -p 80:8080 -t spring-boot:1.0