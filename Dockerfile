# FROM openjdk:11-jre-slim
FROM tomcat:9.0
EXPOSE 8080
ADD target/demo.war /usr/local/tomcat/webapps/demo.war
ENTRYPOINT ["java","-war","/usr/local/tomcat/webapps/demo.war"]
