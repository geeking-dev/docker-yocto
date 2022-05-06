#!/bin/bash

#if --force 
DOCKER_BUILD_ARGS="--no-cache"
#else
DOCKER_BUILD_ARGS=""

docker-compose build ${DOCKER_BUILD_ARGS} && docker-compose run linux