# Radicale Docker Image

## Usage

```
$ docker run \
    --name radicale \
    --restart unless-stopped \
    -v /var/radicale:/var/radicale \
    -p 8888:5232 \
    -d haerlemarcel/radicale
```

## Add User

```
$ docker exec -it radicale /bin/sh
/ # htpasswd -B /var/radicale/users <user>
```
