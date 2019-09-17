IMAGE_NAME = kumojin/redis:sentinel

.PHONY: build
build:
	docker image build -t $(IMAGE_NAME) sentinel/

.PHONY: push
push:
	docker image push $(IMAGE_NAME)