#!/bin/sh
mvn clean package && docker build -t com.myMike/museoGeo .
docker rm -f museoGeo || true && docker run -d -p 9080:9080 -p 9443:9443 --name museoGeo com.myMike/museoGeo