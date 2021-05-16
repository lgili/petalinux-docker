#!/usr/bin/env bash

docker_context=`pwd`


cd ${docker_context}
if [ -f "Dockerfile" ]; then
	echo Dockerfile exists in [${docker_context}]
	echo
	timestamp=`date +"%Y-%m-%d-%H-%M-%S"`
	docker build -t lgili/petalinux:$timestamp .
	docker tag lgili/petalinux:$timestamp lgili/petalinux:latest
else
	echo make sure Dockerfile exists in [${docker_context}]
	echo
fi


echo "-------------------------------------------------------------------"
echo "                        finish building                            "
echo "-------------------------------------------------------------------"
docker images | grep petalinux
