@echo off
call mvn clean package
call docker build -t com.myMike/museoGeo .
call docker rm -f museoGeo
call docker run -d -p 9080:9080 -p 9443:9443 --name museoGeo com.myMike/museoGeo