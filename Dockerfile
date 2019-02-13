


FROM tomcat

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml

COPY java-sample-app/target/*.jar /usr/local/tomcat/webapps/
