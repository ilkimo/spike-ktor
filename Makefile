DOCKER_IMAGE=ktor-prova

make build-docker:
	docker build -t $(DOCKER_IMAGE) .

make run-docker:
	docker run -p 8080:8080 -d $(DOCKER_IMAGE)

make clean:
	./gradlew clean
