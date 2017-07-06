# Supported tags and respective `Dockerfile` links
 
 - [`centos7`, `latest` (centos7/Dockerfile)](https://github.com/docker-zone/docker-os-sshd/blob/centos7/centos/7/Dockerfile)
 
Subscribe to project updates by watching the [docker-os-sshd GitHub repo](https://github.com/docker-zone/docker-os-sshd).
 
# Get this image

The recommended way to get the Dingwenxiang0 Operating System SSHD Docker Image is to pull the prebuilt image from the [Docker Hub Registry](https://hub.docker.com/r/dingwenxiang0/sshd/).

```bash
docker pull dingwenxiang0/sshd
```

To use a specific version, you can pull a versioned tag. You can view the [list of available versions](https://hub.docker.com/r/dingwenxiang0/sshd/tags/) in the Docker Hub Registry.

```bash
docker pull dingwenxiang0/sshd:[TAG]
```

# Running Container on OS with SSH

`docker run -d --name sshd -p 10022:22 dingwenxiang0/sshd:[TAG]`

### Use custome password 
`docker run -d --name sshd -p 10022:22 -e ROOT_PASS=xxxxx dingwenxiang0/sshd:[TAG]`



# Open a shell on it

`docker exec -it sshd bash`

# Kill and remove the container

`docker rm -f sshd`
