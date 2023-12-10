#!/bin/bash
sudo docker build --build-arg UID=$(id -u) --build-arg UNAME=$(id -u -n) --build-arg GID=$(id -g) -t gem5_buil_cont .
sudo docker run -v ${PWD}/..:/gem -it gem5_buil_cont
