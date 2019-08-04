FROM arm32v7/debian:stretch

COPY bin/ /usr/bin/

RUN [ "cross-build-start" ]
RUN apt-get update  
RUN apt-get -y --allow-unauthenticated install build-essential cmake zip
RUN [ "cross-build-end" ]

