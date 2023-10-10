image=eigr/spawn-dart-example:1.0.0

.PHONY: all clean

all: build install

run:

	dart bin/main.dart

build:

	docker build -t ${image} . 

install:

	docker push ${image}

	
