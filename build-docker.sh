#!/bin/bash

TAG=monai-tut

docker build -t $TAG --build-arg USER=$USER --build-arg USER_ID="$(id -u)" --build-arg GROUP_ID="$(id -g)" .
