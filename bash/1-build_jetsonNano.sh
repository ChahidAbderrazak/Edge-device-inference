#!/bin/bash
#### -----------------------   PREPARING THE WORKSPACE  -------------------------------
docker system prune -f
clear
. .env

clear
echo && echo " #################################################" 
echo " ##          REGRESSION PROJECT           " 
echo " ##  JETSON DEPLOYMENT  "
echo " #################################################" && echo 


#### -----------------------   BUILDING THE PROJECT DOCKER  -------------------------------
# build  the the dev-envirnment container(s)
echo && echo "[${PROJECT_NAME}][Docker-Jetson] Building the container(s) for Jetson"
docker compose  -p "${PROJECT_NAME}" -f docker-compose_jetson.yml up -d --build 
