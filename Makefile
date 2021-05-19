build:
	docker build -t tianhuil/pyds .
	
run:
	docker run --network host -it -p 8888:8888 tianhuil/pyds
	