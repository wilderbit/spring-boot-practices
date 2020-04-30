FROM alpine-java:base

COPY ./src ./src

RUN mvn package -DskipTests=true

ENV SPRING_APPLICATION_JSON='{"spring": {"cloud": {"config": {"server": \
    {"git": {"uri": "/var/lib/spring-cloud/config-repo", "clone-on-start": true}}}}}}'

ENTRYPOINT ["/usr/bin/java"]
CMD ["-jar", "/target/spring-boot-practices-0.0.1-SNAPSHOT.jar"]
VOLUME /var/lib/spring-cloud/config-repo
EXPOSE 8080

# Run docker with volume but make sure you have already created base image
# Benefit of this appraoch is people don't need to compile dependencies again and again
# Build image
# docker build -f dockerbase/different_dckfiles/server.dockerfile --tag=server:latest --rm=true .
# Run container
# docker run -d --name=server --publish=8080:8080 --volume=spring-cloud-config-repo:/var/lib/spring-cloud/config-repo server:latest