# Supported tags and respective `Dockerfile` links
 
 - [`centos7`, `latest` (centos7/Dockerfile)](https://github.com/docker-zone/docker-os-ssh/blob/centos7/centos/7/Dockerfile)
 
Subscribe to project updates by watching the [docker-os-ssh GitHub repo](https://github.com/docker-zone/docker-os-ssh).
 
# Get this image

The recommended way to get the Dingwenxiang0 Operating System SSH Docker Image is to pull the prebuilt image from the [Docker Hub Registry](https://hub.docker.com/r/dingwenxiang0/ssh/).

```bash
docker pull dingwenxiang0/os-ssh
```

To use a specific version, you can pull a versioned tag. You can view the [list of available versions](https://hub.docker.com/r/dingwenxiang0/ssh/tags/) in the Docker Hub Registry.

```bash
docker pull dingwenxiang0/ssh:[TAG]
```

# Running Container on OS with SSH

`docker run -ti --name ssh -p 10022:22 dingwenxiang0/ssh:[TAG]`

# Open a shell on it

`docker exec -it ssh bash`

# Kill and remove the container

`docker rm -f ssh`
