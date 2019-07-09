# dockerfiles-ubuntu-user-adderable
Ubuntu, It support base user creation and password setting.

# Building & Running

Copy the sources to your docker host and build the container, and to run.
```
	docker build --rm -t ukumi8192/ubuntu .
	docker run -it --name u1 -e USER=ukumi8192 -e PASSWD=ukumi8192 ukumi8192/ubuntu
```
Get the port that the container is listening on:

```
# docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
ad2ad96e4b2f        ukumi8192/ubuntu      "/bin/bash"         7 seconds ago       Up 6 seconds                            u1
```

To test, ("ukumi8192" is username. )
```
	su - ukumi8192
```
To Rollback
```
    docker rm u1 -f
    docker rmi ukumi8192/ubuntu
```
