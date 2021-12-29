## build image
docker image build -t dockerfileexample . ;
## run the container
docker container run -d -p 8080:8080 dockerfileexample;
## wait 20 second until the container is loaded
sleep 20;
## test running
curl -X GET http://localhost:8080/hello/ahmed
