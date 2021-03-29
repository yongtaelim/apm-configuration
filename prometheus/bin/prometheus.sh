#!/bin/bash

docker_start() {
    echo "start docker by prometheus & grafana.."
    sudo docker-compose -f ../docker-compose.yml up -d
}

docker_remove() {
    sudo "remove docker by prometheus & grafana.."
    sudo docker rm -f $(sudo docker ps -a -f "name=grafana" -f "name=prometheus" -q)
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
