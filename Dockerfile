FROM debian
ADD ./src/openlogic-openjdk-jre-8u352-b08-linux-x64.tar.gz /usr/lib/jvm

ARG JAVA_XMX=2048M
ENV JAVA_XMX="${JAVA_XMX}"
ARG JAVA_XMS=2048M
ENV JAVA_XMS="${JAVA_XMS}"
ARG OTHER_PARAMETERS=
ENV OTHER_PARAMETERS="${OTHER_PARAMETERS}"

WORKDIR /apps
COPY ./src/run.sh ./
WORKDIR /apps/src
COPY ./src/forge ./
WORKDIR /apps/data
ENTRYPOINT [ "sh", "/apps/run.sh" ]