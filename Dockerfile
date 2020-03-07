FROM centos:7


ENV JAVA_HOME /usr/lib/jvm/java-openjdk

RUN \
  yum -y update && \
  yum -y install java-1.6.0-openjdk && \
  yum clean all && \
  rm -rf /var/cache/yum
  
WORKDIR /data

ENV JAVA_HOME /usr/lib/jvm/jre-openjdk
  
CMD ["bash"]
