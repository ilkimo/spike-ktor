FROM gradle:jdk8 as builder

# Copy local code to the container image
WORKDIR /app
COPY build.gradle.kts settings.gradle.kts ./
COPY . .

# Build a release artifact
RUN gradle clean build --no-daemon

# Use AdoptOpenJDK for base image
FROM adoptopenjdk/openjdk11:x86_64-ubuntu-jre-11.0.19_7

WORKDIR /app

# Copy the jar to the production image from the builder stage
COPY --from=builder /app/build/libs/ktor-sas-all.jar /app/ktor-sas-all.jar

# Run the web service on container startup
CMD ["java", "-jar", "/app/ktor-sas-all.jar"]