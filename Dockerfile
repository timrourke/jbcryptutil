FROM maven:3.6.3-jdk-11-slim@sha256:20d9bc7c6b42682eca0b0c868de42273d7d3de79bea7f5b2e5ef872ca617b2b1

RUN mkdir -p /srv/jbcryptutil

COPY . /srv/jbcryptutil

WORKDIR /srv/jbcryptutil

RUN mvn clean assembly:assembly -DdescriptorId=jar-with-dependencies

