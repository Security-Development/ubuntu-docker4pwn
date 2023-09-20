#!/bin/sh
id=$(docker ps | grep ubuntu1804 | awk '{print $1}')
image=$(docker ps | grep ubuntu1804 | awk '{print $2}')
docker kill "$id"
docker rmi -f "$image"
docker rm "$id"
