@echo off
call mvn clean package
call docker build -t com.mycompany/ukol1 .
call docker rm -f ukol1
call docker run -d -p 9080:9080 -p 9443:9443 --name ukol1 com.mycompany/ukol1