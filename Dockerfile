FROM ubuntu:16.04
MAINTAINER Kazuo Yagi <ka_yagi@fancs.com>

# Install JDK, misc packages.
RUN apt-get update && apt-get install -y \
    default-jdk \
    apt-transport-https \
    curl \
    vim

# Install sbt. See http://www.scala-sbt.org/1.0/docs/Installing-sbt-on-Linux.html
RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
RUN apt-get update && apt-get install -y sbt

# Install ammonite. See http://ammonite.io/#Ammonite-REPL
RUN curl -L -o /usr/bin/amm https://git.io/vdNv2 && chmod +x /usr/bin/amm && mkdir /root/.ammonite

WORKDIR /root
RUN echo 'import $ivy.`com.lihaoyi::ammonite-ops:1.0.3`, ammonite.ops._' | tee -a /root/.ammonite/predef.sc
RUN amm -c 'println("initial run for fetching libraries...")'
