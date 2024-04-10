#!/bin/bash
./purge.sh
./create_network.sh
./run_mysql.sh
sleep 30
./filldb.sh
./build_image2.sh
./run-app2.sh