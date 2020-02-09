#FROM tomcat:9.0
#MAINTAINER Pavan Kumar Natam
#RUN echo 'Deploying BikeShop War on Server'
#RUN rm -rf /usr/local/tomcat/webapps/*
#COPY target/bikeshop-0.0.1-SNAPSHOT.war  /usr/local/tomcat/webapps/ROOT.war
#EXPOSE 8080
#CMD ["catalina.sh", "run"]
#FROM tomcat:8.0
#MAINTAINER Amit
#COPY target/bikeshop-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
FROM tomcat:9.0

RUN echo 'Deploying War on Server'

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/bikeshop-0.0.1-SNAPSHOT.war  /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
