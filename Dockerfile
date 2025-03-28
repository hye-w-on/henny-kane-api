# Build stage
FROM gradle:8.5.0-jdk21 AS build
WORKDIR /app
COPY . .
RUN gradle clean build --no-daemon

# Run stage
FROM openjdk:21-slim
WORKDIR /app
COPY --from=build /app/build/libs/*.jar app.jar

# Add a non-root user
RUN useradd -m appuser && chown -R appuser /app
USER appuser

# Expose the port the app runs on
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"] 