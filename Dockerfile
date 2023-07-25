FROM tomcat:9-jdk11-openjdk
WORKDIR /usr/local/tomcat/webapps
RUN rm -rf ROOT.

COPY target/vprofile-v2.war ROOT.war.

EXPOSE 8080
CMD ["catalina.sh", "run"]
