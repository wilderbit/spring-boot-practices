
`mvn -B package  -Dspring.profiles.active=local -DskipTests=true --file pom.xml`

Build image with dockerfile `docker build -f Dockerfile -t demo/oracle-java:8 .`

Docker compose build `docker-compose up --build -d`
Docker compose down `docker-compose down`, It will also remove the container

[Docker cli ](https://docs.docker.com/engine/reference/commandline/docker/)
[Docker compose cli](https://docs.docker.com/compose/reference/overview/)
[Docker docs](https://docs.docker.com)
[Container Tutorials](http://containertutorials.com/index.html)
[Docker learning resources](https://rominirani.com/docker-learning-resources-292dd9958bf5)
[Docker Tutorial series](https://rominirani.com/docker-tutorial-series-a7e6ff90a023)
[Multi container](https://medium.com/better-programming/dockerizing-multiple-services-inside-a-single-container-96cdff286cef)