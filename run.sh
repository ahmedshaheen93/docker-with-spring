## build image
docker image build -t dockerfileexample . ;
## run the container
docker container run -d -p 8080:8080 dockerfileexample;
## test running
curl -X GET http://localhost:8080/hello/ahmed
