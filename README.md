# cleanup
Cleanup old container


## How to use it

```
docker container run --name cleanup --detach \
  --restart always \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  lleroyconsult/cleanup:latest
```