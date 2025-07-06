#FROM openjdk:17-jdk-slim
FROM 532607548077.dkr.ecr.us-east-1.amazonaws.com/mynodeapp-backend-dev:latest
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN apt-get update && apt-get install -y maven && mvn clean package -DskipTests
CMD ["java", "-jar", "target/react-and-spring-data-rest-0.0.1-SNAPSHOT.jar"]
