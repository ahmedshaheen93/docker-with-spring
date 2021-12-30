## define variable for container, network and image names and all needed variables
containerName=my-application;
imageName=my-application;
networkName=my-network;
internalPort=8080;
externalPort=8080;
host=http://localhost;
endPoint=/hello/ahmed;
request=$host:$externalPort$endPoint
## build the application jar
mvn clean package;
## build image
docker image build -t $imageName . ;
## create internal network with name my-network
docker network create $networkName;
## stop running container if exists
docker container stop $containerName;
## run the container
docker container run -d -p $externalPort:$internalPort --network $networkName --name $containerName --rm $imageName;
## wait 20 second until the container is loaded
sleep 20;
## list running containers
docker container ls;
## test running
curl -X GET $request;
