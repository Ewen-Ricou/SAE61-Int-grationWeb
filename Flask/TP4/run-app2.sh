#!/bin/bash
docker run -d -p 5000:5000 --name tp4-app2 --network net-tp4 \
--mount=type=bind,source=$(pwd)/app,target=/app im2-tp4
