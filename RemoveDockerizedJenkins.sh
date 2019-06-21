#!/bin/bash
docker container kill jenkins
wait $!
docker system prune -f
wait $!
docker rmi ryanpgrant8/simplilearn:jenkins