# cleanup
Cleanup old container


## How to use it

```
docker container run --name cleanup \
    --detach \
    --restart always \
    --volume /var/run/docker.sock:/var/run/docker.sock \
    lleroyconsult/cleanup:latest
```

Or

```
docker container run --name cleanup \
    --rm -it \
    --entrypoint /bin/sh \
    lleroyconsult/cleanup:latest
```

## How to connect the container

```
docker container exec -it cleanup /bin/sh
```



## How to update the image

```
docker stop cleanup 
docker rm cleanup
docker image rm docker.io/lleroyconsult/cleanup
``` 

## How to read the log

```
docker logs -f --tail 50 cleanup
```