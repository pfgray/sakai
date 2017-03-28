FROM tomcat:jre8

COPY ./tomcat /usr/local/tomcat

EXPOSE 9000

CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
