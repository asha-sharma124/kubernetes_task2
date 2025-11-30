FROM eclipse-temurin:8-jre-alpine

WORKDIR /app



# Copy the pre-built JAR from Maven build step
COPY target/account-service.jar ./app.jar

CMD ["java", "-Xmx200m", "-jar", "app.jar"]



EXPOSE 6000
