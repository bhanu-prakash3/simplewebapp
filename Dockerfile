#FROM tomcat:9.0.12
FROM tomcat:latest
USER root
COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/
COPY ip-endpoints/target/ip-endpoints.war /usr/local/tomcat/webapps/
EXPOSE 8080
#CMD ["catalina.sh","run"]
CMD ["java", "-jar", "ip-endpoints.war"]
