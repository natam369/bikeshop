FROM tomcat:9.0
MAINTAINER DEVARAKONDA CHAKRADHAR
RUN echo 'Deploying War on Server'
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/bikeshop-0.0.1-SNAPSHOT.war  /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
