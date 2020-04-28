FROM maven:3.6.0-jdk-11-slim AS build

# Copy the pom file
COPY ./pom.xml ./pom.xml

# build all dependencies
RUN mvn dependency:go-offline -B

# copy your other files
COPY ./src ./src

# build for release
RUN mvn package -DskipTests=true

# our final base image
FROM openjdk:11-jre-slim

COPY --from=build target/spring-boot-practices-0.0.1-SNAPSHOT.jar ./app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","./app.jar"]

# docker build -t demo .
#docker run --rm -it demo:latest

# Maven running within a container
# docker run -it --rm \
#       -v "$(pwd)":/opt/maven \
#       -w /opt/maven \
#       maven:3.2-jdk-7 \
#       mvn clean install