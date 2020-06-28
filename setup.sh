#!/usr/bin/bash
printf "\n..CW App Setup..\n"

username=""

read -p "Enter your Docker username. Make sure you're already logged in\n"
username=$REPLY

printf "\n..Building v1.0..\n"
docker build ./v1.0/ -t $username/cw-app:1.0

printf "\n..Building v2.0..\n"
docker build ./v2.0/ -t $username/cw-app:2.0

printf "\n..Building v2.1..\n"
docker build ./v2.1/ -t $username/cw-app:2.1

printf "\n..Pushing Images to Docker Hub"
docker push $username/cw-app:1.0
docker push $username/cw-app:2.0
docker push $username/cw-app:2.1