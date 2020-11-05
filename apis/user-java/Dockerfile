# First stage to build the application
FROM maven:3.5.4-jdk-11-slim AS build-env
ADD ./pom.xml pom.xml
ADD ./src src/
RUN mvn clean package

# build runtime image
FROM openjdk:11-jre-slim

EXPOSE 8080

# ENV SQL_USER=${SQL_USER} \
# SQL_PASSWORD=${SQL_PASSWORD} \
# SQL_SERVER=${SQL_SERVER} \
# SQL_DBNAME=${SQL_DBNAME}

# Add the application's jar to the container
COPY --from=build-env target/swagger-spring-1.0.0.jar user-java.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/user-java.jar"]