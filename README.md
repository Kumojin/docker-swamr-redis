# Docker Swarm Redis

https://redis.io/topics/sentinel#sentinel-docker-nat-and-possible-issues

## Setup
### Docker nodes configuration
#### Master node

```shell
docker node update --label-add app redis
docker node update --label-add redistype master
```

#### Replica nodes

```shell
docker node update --label-add app redis
docker node update --label-add redistype replica
```

### Deploy stack

Replace `<MASTER_IP>` with the IP of Redis master host in the file `redis.yml`

```shell
docker stack deploy -c redis.yml redis
```
