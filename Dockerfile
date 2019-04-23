# Pull base image

FROM java

RUN apt-get install wget -y
RUN mkdir /usr/local/tomcat
RUN wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz -O /usr/local/tomact/tomcat.tar.gz
RUN cd /usr/local/tomact && tar xvfz tomcat.tar.gz
#RUN cp -Rv /tmp/apache-tomcat-8.0.53/* /usr/local/tomcat/
EXPOSE 8080
ADD  workspace.war /usr/local/tomact/webapps/workspace.war 
CMD ['/usr/local/tomact/bin/catalina.sh','run']






