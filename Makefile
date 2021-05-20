build:
	docker build -t tianhuil/pyds -f Dockerfile.conda .
	
run:
	docker run --network host -it -p 8888:8888 tianhuil/pyds
	