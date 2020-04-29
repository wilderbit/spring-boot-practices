
`mvn -B package  -Dspring.profiles.active=local -DskipTests=true --file pom.xml`

Build image with dockerfile `docker build -f Dockerfile -t demo/oracle-java:8 .`

Docker compose build `docker-compose up --build -d`
Docker compose down `docker-compose down`, It will also remove the container

[Docker cli ](https://docs.docker.com/engine/reference/commandline/docker/)
[Docker compose cli](https://docs.docker.com/compose/reference/overview/)
[Docker docs](https://docs.docker.com)