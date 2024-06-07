#!/bin/sh
docker stop $(docker ps -q)
docker system prune -a -f
docker volume prune -f
