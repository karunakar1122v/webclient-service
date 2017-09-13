FROM java:openjdk-8u91-jdk
COPY target/com.doj.web-0.0.1-SNAPSHOT.war .
CMD java -jar com.doj.web-0.0.1-SNAPSHOT.war
