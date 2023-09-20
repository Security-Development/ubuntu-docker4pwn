#!/bin/sh

docker build . -t ubuntu1804;
docker run -d -t --privileged --name=ubuntu1804_container ubuntu1804;
docker exec -it -u root ubuntu1804_container bash

