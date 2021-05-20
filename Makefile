build:
	docker build -t tianhuil/pyds -f Dockerfile.conda .

build-osx:
	docker buildx build --platform linux/arm64 -t tianhuil/pyds -f Dockerfile.conda .
	
run:
	docker run --network host -it -p 8888:8888 tianhuil/pyds
