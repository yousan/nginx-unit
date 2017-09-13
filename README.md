# NGINX Unit

NGINX Unit is a dynamic web application server, designed to run applications in multiple languages.

https://www.nginx.com/products/nginx-unit/

# Supported tags and respective Dockerfile links
latest, 0.1 ([](docker/Dockerfile))

# How to run

Run with docker-compose.

```bash
$ docker-compose up
```

Or you can use docker command

```bash
$ docker run --privileged=true -v `pwd -P`/json:/root/json  -v `pwd -P`/root:/www/root -v `pwd -P`/run:/var/run:rw -p 8200:8200 -p 8300:8300  -ti ubuntu:yousan
```
