## define variable for container, network and image names
containerName=my-application;
imageName=my-application;
networkName=my-network;

## build the application jar
mvn clean package;
## build image
docker image build -t $imageName . ;
## create internal network with name my-network
docker network create $networkName;
## stop running container if exists
docker container stop $containerName;
## run the container
docker container run -d -p 8080:8080 --network $networkName --name $containerName --rm $imageName;
## wait 20 second until the container is loaded
sleep 20;
## test running
curl -X GET http://localhost:8080/hello/ahmed
## list running containers
docker container ls;
