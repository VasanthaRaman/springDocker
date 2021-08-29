FROM maven:3.5.2-jdk-8-alpine AS builder
COPY pom.xml /tmp/ 
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn install package
COPY /tmp/target/spring-mvc-maven.war $CATALINA_HOME/webapps/sprin1.war

FROM tomcat:9.0-jre8-alpine
COPY --from=builder /tmp/target/spring-mvc-maven.war $CATALINA_HOME/webapps/sprin.war 
EXPOSE 8080
