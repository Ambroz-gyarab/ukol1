#!/bin/sh
mvn clean package && docker build -t com.mycompany/ukol1 .
docker rm -f ukol1 || true && docker run -d -p 9080:9080 -p 9443:9443 --name ukol1 com.mycompany/ukol1