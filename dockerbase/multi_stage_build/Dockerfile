
# Build stage
FROM maven:3.6.0-jdk-11-slim AS build
# cd /home/app
WORKDIR /home/app

COPY pom.xml pom.xml
COPY src src
RUN mvn clean package


# Package stage
FROM openjdk:11-jre-slim
COPY --from=build /home/app/target/spring-boot-practices-0.0.1-SNAPSHOT.jar ./app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","./app.jar"]

# Building image `docker build -f dockerbase/multi_stage_build/Dockerfile -t approach_2:latest .`

# Running container `docker run -d --name=finacko_server --publish=8080:8080 approach_1:latest`

# (Running command inside a docker)
# docker run -it --rm -v "$(pwd)":/opt/maven -w /opt/maven maven:3.6.0-jdk-11-slim mvn clean install