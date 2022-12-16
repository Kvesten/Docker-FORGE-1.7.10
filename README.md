# Forge 1.7.10 docker images



## docker-compose.yml example:
```yml
version: "3.7"
services:
  forge:
    build: .
    container_name: forge-server
    restart: unless-stopped
    environment:
      - JAVA_XMX=4G  # Optional, default 2048M
      - JAVA_XMS=4G  # Optional, default 2048M
    volumes:
      - ./mine-data/:/apps/data/
    ports:
      - "25565:25565/tcp"
```
Other ENV:
* OTHER_PARAMETERS - Optional, no default
  
example:
* \- OTHER_PARAMETERS=-param1 -param2 -param3
### Version programm:
* Java - openjdk-jre-8u352-b08-linux-x64
* Forge - forge-1.7.10-10.13.4.1614-1.7.10-universal