
FROM tomcat:8.0
MAINTAINER Nobuyuki Paul Aoki <aokinobu@gmail.com>

RUN apt-get update

WORKDIR /
RUN mkdir /bigdata

WORKDIR /bigdata
RUN wget http://sourceforge.net/projects/bigdata/files/bigdata/1.5.2/bigdata.war

WORKDIR /
ADD run.sh /run.sh
RUN chmod a+x /run.sh
WORKDIR /bigdata
CMD ["/run.sh"]
