# spring-boot-practices
Spring Boot Best Practices


## Adding log4j
Maven dependency
```xml
<!-- https://mvnrepository.com/artifact/org.apache.logging.log4j/log4j -->
<dependency>
    <groupId>org.apache.logging.log4j</groupId>
    <artifactId>log4j</artifactId>
    <version>2.8.2</version>
    <type>pom</type>
</dependency>

<dependency>
  <groupId>org.springframework.boot</groupId>
  <artifactId>spring-boot-starter-log4j2</artifactId>
</dependency>
``` 