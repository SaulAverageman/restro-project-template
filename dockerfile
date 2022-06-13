FROM centos:7
RUN yum install java -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
RUN wget https://mirrors.estointernet.in/apache/tomcat/tomcat-10/v10.0.20/bin/apache-tomcat-10.0.20.tar.gz
RUN tar -xvf apache-tomcat-10.0.20.tar.gz
COPY target/restro.war /opt/tomcat/webapps
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
