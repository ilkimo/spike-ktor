# spike-ktor
This is a demo application of a microservice written in Kotlin with Ktor

## Build docker image
```/bin/bash
docker build -t DOCKER_IMAGE_NAME .
```

## Run container
```/bin/bash
docker run -p 8080:8080 -d DOCKER_IMAGE_NAME
```