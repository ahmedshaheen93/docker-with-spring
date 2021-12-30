# Simple spring boot app with docker file

## Dockerfile

- describe from which base image we will start
- define the working directory
- copy jar file from the target directory
- start the spring boot application

## run.sh file commands
- create internal network to communicate internally between the containers
- build image
- run a container form that image and specify network and container name 
- wait 20 second till the container start
- send a curl request to test the running container
