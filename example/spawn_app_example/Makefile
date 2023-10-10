image=eigr/spawn-dart-example:1.0.0

.PHONY: all clean

all: build install

compile-protos:

	protoc --dart_out=grpc:lib/src/generated protos/domain.proto

build:

	docker build -t ${image} . 

install:

	docker push ${image}

run:

	dart bin/main.dart

	
