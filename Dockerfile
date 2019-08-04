FROM arm32v7/debian:stretch

COPY bin/ /usr/bin/

RUN [ "cross-build-start" ]
RUN apt-get update  
RUN [ "cross-build-end" ]

