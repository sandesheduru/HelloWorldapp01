FROM openjdk:11-jre-slim
EXPOSE 8080
ADD target/demo.war /usr/local/tomcat/webapps/demo.war
ENTRYPOINT ["java","-war","/usr/local/tomcat/webapps/demo.war"]
