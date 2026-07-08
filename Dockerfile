# Build stage
FROM maven:3.9-eclipse-temurin-17 AS build

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean package -DskipTests

# Runtime stage
FROM eclipse-temurin:17-jre

WORKDIR /app

COPY --from=build /app/target/github-actions-demo-1.0.jar app.jar

ENTRYPOINT ["java", "-cp", "app.jar", "com.example.App"]
