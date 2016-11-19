.PHONY:
build:
	docker build --tag docker.io/igorwwwwwwwwwwwwwwwwwwww/stunnel .

.PHONY: push
push:
	docker push docker.io/igorwwwwwwwwwwwwwwwwwwww/stunnel
