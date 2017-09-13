FROM java:openjdk-8u91-jdk
COPY target/com.doj.ms.web-0.0.1-SNAPSHOT.jar .
CMD java -jar com.doj.ms.web-0.0.1-SNAPSHOT.jar 
