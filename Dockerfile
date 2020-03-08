FROM centos:7

RUN \
  yum -y update && \
  yum -y install java-1.6.0-openjdk && \
  yum clean all && \
  rm -rf /var/cache/yum
  
ENV JAVA_HOME /usr/lib/jvm/jre-openjdk
ENV LC_ALL en_US.UTF-8
  
CMD ["bash"]
