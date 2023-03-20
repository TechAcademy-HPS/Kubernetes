FROM tomcat:8
LABEL IMAGE=JAVATEST
RUN sed -i 's/port="8080"/port="9090"/' /usr/local/tomcat/conf/server.xml
RUN rm -rf  /usr/local/tomcat/webapps/*.war
COPY ./target/*.war /usr/local/tomcat/webapps/
EXPOSE 9090
CMD ["catalina.sh", "run"]
