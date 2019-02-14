


FROM tomcat

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
RUN rm -rf java-sample-app/target/*.war
COPY java-sample-app/target/*.war /usr/local/tomcat/webapps/
