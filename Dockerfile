# Stage 1: Build
FROM maven:3.8.5-openjdk-17 as builder
COPY . /app
WORKDIR /app
RUN mvn clean package -DskipTests

# Stage 2: Run
FROM openjdk:17
COPY --from=builder /app/target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
EXPOSE 10000
CMD ["java", "-jar", "your-app.jar"]
