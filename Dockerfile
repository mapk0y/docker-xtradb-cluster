FROM ubuntu:12.04
MAINTENER Kazuya Yokogawa "mapk0y@gmail.com"

RUN echo "deb http://jp.archive.ubuntu.com/ubuntu/ precise main" > /etc/apt/sources.list
RUN echo "deb http://jp.archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 1C4CBDCDCD2EFD2A
RUN echo "deb http://repo.percona.com/apt precise main" >>/etc/apt/sources.list.d/percona.list
RUN apt-get update

RUN apt-get install -y socat
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y percona-xtradb-cluster-client-5.5 percona-xtradb-cluster-server-5.5 percona-xtradb-cluster-galera-2.x

#CMD ["/usr/bin/mysqld_safe"]
