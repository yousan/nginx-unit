# NGINX Unit

NGINX Unit is a dynamic web application server, designed to run applications in multiple languages.

https://www.nginx.com/products/nginx-unit/

# Supported tags and respective Dockerfile links
latest, 0.1.1 ([https://github.com/yousan/nginx-unit/blob/0.1.1/Dockerfile](docker/Dockerfile))

# How to run

Run with docker-compose is rightly simple. 

```bash
$ git clone https://github.com/yousan/nginx-unit
$ cd nginx-unit
$ docker-compose up
```

Socket file to connect unit server and json files to manage unit server are preserved.

```bash
$ sudo curl -X PUT -d @./json/wiki.json --unix-socket ./run/control.unit.sock http://localhost/ 
``` 

# Docker

you can use docker command

```bash
$ docker run --name some-nginx-unt -d yousan/nginx-unit
```

Create root and run directories, mount those directories.

```bash
$ docker run --name some-nginx-unit -v /var/www:/www/root -v /var/run:/var/run:rw  -p 8200:8200 -p 8300:8300  yousan/nginx-unit
```

# Send commands from Local
You can send curl requests from local host into docker container.

```bash
$ sudo curl -X PUT -d @./json/wiki.json --unix-socket ./run/control.unit.sock http://localhost/ 
```
Make sure you are bind directoriy (/var/run/) which have socket file (/var/run/control.sock)