# Redis-Sentinel-Docker-Compose

A quick startup for installing Redis Sentinel with Docker Compose.
## How to run
The shell script is working well in macOS. You're welcome to contribute on other platforms.

Start by executing 
```
./run.sh
```
## How to connect
Redis master is published on port 6379.  
The sentinels are published on the following port:
* 26379
* 26380
* 26381

An example of redis client configuration is as below:
```
  redis:
    password: ''
    sentinel:
      master: 'redismaster'
      password: ''
      nodes:
        - 'localhost:26379'
        - 'localhost:26380'
        - 'localhost:26381'
```
