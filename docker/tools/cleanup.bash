#!/bin/bash

. ${0%/*}/lib.bash

container_count=$( docker ps -a | awk '/Exited/ {print $1}' | wc -l )
echo
echo "*** Stopped Containers: $container_count ***"
if [ $container_count -gt 0 ]; then 
	echo "Remove stopped container ..."
	docker rm $( docker ps -a | awk '/Exited/ {print $1}' )
fi

images_count=$( docker images -q --filter "dangling=true" | wc -l )
echo
echo "*** Untagged Images: $images_count ***"
if [ $images_count -gt 0 ]; then 
	echo "Remove untagged images ..."
	docker rmi $( docker images -q --filter "dangling=true" )
fi

