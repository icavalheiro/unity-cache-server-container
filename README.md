# Unity cache-server container
This is a docker container for unity cache server

## Build
To run it you first need to build it:

```
$ docker build .
```

## Run
To run the built container just discover the container id, and then execute the follosing command:

```
$ docker run -d -p 8126:8126 --name cache-server -v "/data/cache" <THE ID OF THE GENERATED CONTAINER IMAGE>
```