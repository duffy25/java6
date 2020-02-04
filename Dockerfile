FROM centos:7
MAINTAINER duffy

ENV JAVA_HOME /usr/lib/jvm/java-openjdk

RUN \
    yum -y install wget java-1.6.0-openjdk;\
    yum -y clean all 

CMD ["/bin/bash"]
