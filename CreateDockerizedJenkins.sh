#!/bin/bash
docker pull ryanpgrant8/simplilearn:jenkins
wait $!
docker run --name jenkins -it -d -p 8081:8080 ryanpgrant8/simplilearn:jenkins
wait $!
docker exec jenkins service jenkins start
sleep 10
docker exec jenkins cat /var/lib/jenkins/secrets/initialAdminPassword
