# Dockerfiles and Docker Compose    
    
#### Is Docker efficient?    
Spawning an entire operating system for just one process? Seems expensive. But, it must be becoming industry standard for a reason... easy to scale, start, stop, move.    
    
#### Security concerns to read    
https://phusion.github.io/baseimage-docker/    
    
#### Don't have to spawn a whole OS    
    
    
## Useful Shortcuts:    
**`docker build`** runs **`docker-compose.yml`** in the same folder    
**`docker-compose up`** runs **`docker-compose.yml`** in the same folder    
    
#### Stop and Remove all Docker containers:    
```bash    
docker stop $(docker ps -a -q)    
docker rm $(docker ps -a -q)    
```    
This command can not be used via SSH,    
Because $(docker ps -a) will be executed on your local machine, not on server.    
[coderwall.com/.../stop-remove-all-docker-containers](https://coderwall.com/p/ewk0mq/stop-remove-all-docker-containers)    
    
