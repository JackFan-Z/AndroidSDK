DOCKER = docker
IMAGE = android-sdk
DOCKERFILE_FOLDER = android-sdk

docker: $(DOCKERFILE_FOLDER)/Dockerfile
	$(DOCKER) build -t $(IMAGE) $(DOCKERFILE_FOLDER)

all: docker 

.PHONY: all

