# Container vs Image vs Traditional Servers  
  
  
**`docker-compose up -d`** runs **`docker-compose.yml`**, which may spawn multiple Docker images:  
```bash  
version: '3'  
  
services:  
  
  api:  
    image: api-image  
    build: ./api-folder  
    ports: - "1081:1081"  
    volumes:  
    - .:/code  
    - logvolume01:/var/log  
    links:  
    - redis  
  
  app:  
    image: app-image  
    build: ./app-folder  
    ports: - "1080:1080"  
  
  redis:  
    image: redis  
  
volumes:  
  logvolume01: {}  
```  
  
or maybe simple and control only one Docker image, like this:  
```bash  
version: '3'  
services:  
  app:  
    image: app-image  
    build: ./app-folder  
    ports: - "1080:1080"  
```  
