FROM openjdk:17-jdk-slim
WORKDIR /app
COPY pom.xml .
COPY src ./src
CMD ["java", "-jar", "target/react-and-spring-data-rest-0.0.1-SNAPSHOT.jar"]
