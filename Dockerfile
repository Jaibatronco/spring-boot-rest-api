FROM eclipse-temurin:17-jdk-focal

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN ./mvnw package -DskipTests

EXPOSE 8080

CMD ["java", "-jar", "target/spring-boot-rest-api-0.0.1-SNAPSHOT.jar"]
