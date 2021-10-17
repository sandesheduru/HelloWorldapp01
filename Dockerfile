# Build stage
#
FROM maven:3.6.3-0penjdk:11-jdk AS build
COPY src /helloworldWebapp05/src/
COPY pom.xml /helloworldWebapp05
RUN mvn -f /helloworldWebapp05/pom.xml clean package

#
# Package stage
#
FROM openjdk:11-jre-slim
COPY --from=build /helloworldWebapp05/target/demo-0.0.1-SNAPSHOT.war /usr/local/lib/demo.war
EXPOSE 8080
ENTRYPOINT ["java","-war","/usr/local/lib/demo.war"]
