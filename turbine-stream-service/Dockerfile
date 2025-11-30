
FROM eclipse-temurin:8-jre-alpine

WORKDIR /app

# Copy the pre-built JAR from Maven build step
COPY target/turbine-stream-service.jar ./app.jar

CMD ["java", "-Xmx200m", "-jar", "app.jar"]

EXPOSE 8989
