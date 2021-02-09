FROM ubuntu:20.04 AS build
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y install cmake g++ git libtbb-dev && mkdir /data
WORKDIR /data

ADD . /data
RUN rm -rf build && mkdir build 
WORKDIR /data/build
RUN cmake ../ && make

# copy liblaszip.so to tmp directory
RUN ldd /data/build/PotreeConverter | grep 'liblaszip.so' | awk '{print $3}' | xargs -I '{}' cp -v '{}' /tmp/

FROM ubuntu:20.04

RUN apt-get update && apt-get -y install libtbb-dev

COPY --from=build /tmp/liblaszip.so* /usr/lib

COPY --from=build /data/build/PotreeConverter /data/build/PotreeConverter

COPY --from=build /data/build/resources /data/build/resources

ENTRYPOINT ["/data/build/PotreeConverter"]
