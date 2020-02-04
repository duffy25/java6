FROM centos7
MAINTAINER duffy

#RUN \
#    yum -y install wget;\
#    cd /usr ;\
#    wget --no-cookies --no-check-certificate "http://download.slogra.com/java/jdk-6u32-linux-i586.bin" -O /tmp/jdk-6u32-linux-i586.bin;\
#    yum -y remove wget;\
#    yum -y clean all

# alternate  java method disabled: download local jdk
ADD jdk-6u32-linux-i586.bin /usr/

RUN \
    echo yes|sh /usr/jdk-6u32-linux-i586.bin ;\
    rm /usr/jdk-6u32-linux-i586.bin;\
    mv jdk1.6.0_32 java
    

ENV JAVA_HOME /usr/java

#ENV PATH /usr/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
