# Docker version:
Show up the Docker version:
```
docker --version
```
# Docker pull:
The command for pulling images is:
```
docker pull <image_name>
```
Pull specific version
```
docker pull <image_name>:<version>
```
# Docker ps:
To see running containers in your machine
```
docker ps
```
See previously stopped docker containers:
```
docker ps -a
```
# docker run:

After pulling the image, the next gradual step is to create a container(an instance) from the image.
```
docker run <image_name>
```
Useful options to use along with docker run:

a. Detached terminal:
```
docker run -d <image_name>
```
b. Specifying specific ports for containers:
```
docker run -p<host_port_number>:<container_port> <image_name>
```
c. Giving names to containers:

```
docker run -d --name NAME
```
d. Giving volumes in the docker run command:
```
docker run -v my_personal_volume:/usr/lib/data
```

# docker images:

In order to see all the docker images present on your machine, use the command:
```
docker images
```
# docker stop:

To stop the container, run the command given below:
```
docker stop <container_id/name>
```

# docker start:
Opposite of docker stop :D
```
docker start <container_id/name>
```
# docker logs:

To see the logs of the container:
```
docker logs <container_id/name>
```
Useful options for docker logs:

a. — tail
```
docker logs <container_id/name> --tail <n/all>
```


b. -f:

In order to read the logs while  is written 
```
docker logs <container_id/name> -f
```
# docker exec:

If you want to run any command inside of the container’s terminal:
```
docker exec -d NAME <command> 
```

Getting interactive terminal of the container:

```
docker exec -it <container_id/name> /bin/bash
```
```
docker exec -it <container_id/name> /bin/sh
```
# docker network:

To see the networks, currently in use by the docker.
```
docker network ls
```

Creating docker network:
```
docker network create <NET-NAME>
```

# docker rm:

Remove a stopped container 
```
docker rm <container_id/name>
```

# docker rmi:
Remove an image 

docker rmi <image_name>

Note: In order for the image to be deleted, it shouldn’t have any running container based on this image.
