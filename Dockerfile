FROM pataquets/ubuntu:xenial

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get -y install \
      rsync \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/

ENTRYPOINT [ "rsync" ]
