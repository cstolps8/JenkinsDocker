@echo off

docker run -itd -e JENKINS_USER=user -v %CD%/jenkins_home:/var/jenkins_home  -p 8880:8080 -p 50000:50000  -u root jenkins/jenkins:lts-jdk11

echo ''''''''''''''' Administrator password:  '''''''''''''''

TYPE jenkins_home\secrets\initialAdminPassword

REM TYPE  ''''''''''''''' your password:  '''''''''''''''
