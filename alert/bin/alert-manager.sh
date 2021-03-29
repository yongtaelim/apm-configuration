#!/bin/bash

docker_start() {
    echo "start docker by alert-manager.."
    sudo docker-compose -f ../docker-compose.yml up -d
}

docker_remove() {
    sudo "remove docker by alert-manager.."
    sudo docker rm -f $(sudo docker ps -a -f "name=alertmanager" -q)
}

if [ "start" == "$1" ]; then
        docker_remove
        docker_start
elif [ "remove" == "$1" ]; then
        docker_remove
else
    echo "???"
fi

echo "finished Success"
exit 0
