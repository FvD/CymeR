#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
parentDIR="$(dirname "$DIR")"
sudo true && \
sudo docker rmi -f $(docker images | grep "^<none>" | awk "{print $3}")
#sudo docker build -t bmuchmore/cymer $DIR/BaseFiles/Update && \
docker pull bmuchmore/cymer
sudo docker rmi -f $(docker images | grep "^<none>" | awk "{print $3}")
read -p "*** YOU CAN NOW CLOSE ME ***"
