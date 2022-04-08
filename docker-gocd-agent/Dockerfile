FROM gocd/gocd-agent-ubuntu-18.04:v22.1.0
USER root
ARG UID=1000

RUN \
  apt-get update && \
  apt-get install -y npm nodejs python3-pip && \
  apt-get autoclean && \
  npm install -g n && \
  n stable && \
  pip3 install -U selenium && \
  pip3 install -U pytest && \
  pip3 install -U webdriver-manager
