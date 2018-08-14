FROM tomcat:7.0.75-jre7
RUN apt-get update

#installing maven - Extra step to install maven and build inside the container
RUN apt-get install -y maven

# copying build to container
COPY . /root

COPY target/JunitExample.war /usr/local/tomcat/webapps


