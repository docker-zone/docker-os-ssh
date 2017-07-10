# Supported tags and respective `Dockerfile` links

 - [`centos7`, `latest` (centos7/Dockerfile)](https://github.com/docker-zone/docker-os-sshd/blob/centos7/centos/7/Dockerfile)
 - [`centos6.8` (centos6.8/Dockerfile)](https://github.com/docker-zone/docker-os-sshd/blob/centos6.8/centos/6.8/Dockerfile)
 - [`centos6.9` (centos6.9/Dockerfile)](https://github.com/docker-zone/docker-os-sshd/blob/centos6.9/centos/6.9/Dockerfile)
 - [`centos7.0.1406` (centos7.0.1406/Dockerfile)](https://github.com/docker-zone/docker-os-sshd/blob/centos7.0.1406/centos/7.0.1406/Dockerfile)
 - [`centos7.1.1503` (centos7.1.1503/Dockerfile)](https://github.com/docker-zone/docker-os-sshd/blob/centos7.1.1503/centos/7.1.1503/Dockerfile)
 - [`centos7.2.1511` (centos7.2.1511/Dockerfile)](https://github.com/docker-zone/docker-os-sshd/blob/centos7.2.1511/centos/7.2.1511/Dockerfile)
 - [`centos7.3.1611` (centos7.3.1611/Dockerfile)](https://github.com/docker-zone/docker-os-sshd/blob/centos7.3.1611/centos/7.3.1611/Dockerfile)


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

### Use Random Password
`docker run -d --name sshd -p 10022:22 dingwenxiang0/sshd:[TAG]`

### Use Custome Password 
`docker run -d --name sshd -p 10022:22 -e ROOT_PASS=yourPasswd dingwenxiang0/sshd:[TAG]`

### Use No Password Login (user:root)
* Generate ssh key <br/>
in host computer exec command `ssh-keygen -t rsa` (just hit ENTER):

![image](https://raw.githubusercontent.com/docker-zone/docker-os-sshd/master/sshkeygenexec.png)

* Copy id_rsa.pub content

![image](https://raw.githubusercontent.com/docker-zone/docker-os-sshd/master/copyidrsapub.png)

* Running <br/>
`docker run -d --name sshd -p 10022:22 -e AUTHORIZED_KEYS=yourCopyContent dingwenxiang0/sshd:[TAG]`

# Watch logs (get the random password)

`docker logs sshd`

# Use SSH

`ssh root@host -p 10022`

# Open a shell on it

`docker exec -it sshd bash`

# Kill and remove the container

`docker rm -f sshd`

# Issue

### Host key verification failed.

![image](https://raw.githubusercontent.com/docker-zone/docker-os-sshd/master/hostfailed.png)

How to solve the problem? <br/>

in host computer remove known_hosts file: `rm -rf /root/.ssh/known_hosts`


