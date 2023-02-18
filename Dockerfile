FROM tomcat

COPY /target/hello-world-war-1.0.0.war /usr/local/tomcat/webapps/
RUN sed -i 's/port="8080"/port="9090"/' ${CATALINA_HOME}/conf/server.xml
CMD ["catalina.sh", "run"]
