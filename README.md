# Simple Streaming Server as a docker container

## Docker commands
### To compile image named `streaming`
```shell
docker build -t streaming .
```

### To run image created
```shell
docker run --name streaming -d -p 1935:1935 streaming /bin/sh /opt/run.sh
```

### To stop container
```shell
docker stop streaming
```

### To remove container
```shell
docker rm streaming
```

### To remove image
```shell
docker rmi streaming
```

## Docker compose commands
### To build image and run
```shell
docker compose up -d
```

### To stop and remove the container (but doesn´t remove image)
```shell
docker compose down
```
