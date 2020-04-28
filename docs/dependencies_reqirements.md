## Adding log4j
Maven dependency
```xml
<dependencies>
    <!-- https://mvnrepository.com/artifact/org.apache.logging.log4j/log4j -->

    <dependency>
        <groupId>org.apache.logging.log4j</groupId>
        <artifactId>log4j</artifactId>
        <version>2.8.2</version>
    </dependency>
    
    <!--OR
      If using this so exclude logging from spring boot starter,
      This is recommended 
    -->

    <dependency>
      <groupId>org.apache.logging.log4j</groupId>
      <artifactId>log4j-api</artifactId>
      <version>2.13.2</version>
    </dependency>

    <dependency>
      <groupId>org.apache.logging.log4j</groupId>
      <artifactId>log4j-core</artifactId>
      <version>2.13.2</version>
    </dependency>

</dependencies>
``` 

