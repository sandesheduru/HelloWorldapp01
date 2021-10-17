# Demo Java Web App

[![Build and deploy Java app](https://github.com/orgtest-rahul/helloworldWebapp05/actions/workflows/main.yml/badge.svg)](https://github.com/orgtest-rahul/helloworldWebapp05/actions/workflows/main.yml)


## Build

* Build and Deploy to Azure Web App
* Build and create Docker image and push to ACR, then run through webapp using Webhook


## What happened

* mvn package was ran and the `target/demo.war` was moved into `pkg/demo.war`
* a docker image was built which copied the `pkg/demo.war` to `/usr/local/tomcat/webapps/demo.war`. Check out the [Dockerfile](Dockerfile) for details.

Here's an example of some things to check after running the build script:

    $ ls pkg/demo.war
    pkg/demo.war
    $ docker images
    REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
    demo-java           latest              88092dfb7325        6 minutes ago       591MB
    tomcat              8.5                 a92c139758db        2 weeks ago         558MB
    $

## Source Url Mapping

The app is a small demo of a java servlet app.  Here's the source code to url mapping:

Source | Url
--- | ---
src/main/java/Hello.java | https://rahultestwebapp04.azurewebsites.net/demo/Hello
src/main/webapp/index.jsp | https://rahultestwebapp04.azurewebsites.net/demo/index.jsp



