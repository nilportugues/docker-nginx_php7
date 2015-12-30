# nginx + PHP7 Docker

## Building the container

To build run either from within the cloned directory (please note the trailing dot):

```sh
docker build -t nilportugues/nginx_php7 .
```

After a successful build, a container can be ran by the following command:
```
docker run -ti nilportugues/nginx_php7
