repl:
	docker run --rm -it --mount type=bind,src="$(CURDIR)",dst=/work sicp

build:
	docker build -t sicp .

.PHONY: repl build
