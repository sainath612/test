FROM ubuntu:latest
RUN apt update -y
RUN apt install openjdk-11-jre -y
RUN apt install unzip 
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.27/bin/apache-tomcat-10.0.27.zip .
RUN unzip apache-tomcat-10.0.27.zip
RUN mv apache-tomcat-10.0.27/* /opt/tomcat
WORKDIR /apache-tomcat-10.0.27/bin
EXPOSE 8080
CMD ["/opt/tomcat/apache-tomcat-10.0.27/bin/catalina.sh", "run"]
