FROM openjdk

WORKDIR /usr/local/bin/

COPY target/spring-docker-file-0.0.1-SNAPSHOT.jar .

CMD ["java" ,"-jar", "spring-docker-file-0.0.1-SNAPSHOT.jar"]
