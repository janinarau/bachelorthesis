FROM debian:buster

ARG UNAME=user
ARG UID=1000
ARG GID=1000

RUN groupadd -g $GID -o $UNAME
RUN useradd -m -u $UID -g $GID -o -s /bin/bash $UNAME

RUN bash -c "apt -y update"
RUN bash -c "apt -y install python2-dev"
RUN bash -c "apt -y install scons"
RUN bash -c "apt -y install build-essential"
RUN bash -c "apt -y install gcc-aarch64-linux-gnu"
RUN bash -c "apt -y install zlib1g-dev"
RUN bash -c "apt -y install m4"
RUN bash -c "apt -y install libboost-dev"
RUN bash -c "apt -y install python-setuptools"

USER $UNAME
ENTRYPOINT /gem/dockerbuild/compile.sh
#CMD bash
