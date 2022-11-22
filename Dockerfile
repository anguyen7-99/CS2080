FROM ubuntu
  
RUN apt update  \
&&  apt install -y zsh curl

RUN curl -fsSL https://code-server.dev/install.sh | sh

CMD code-server --auth none --bind-addr 0.0.0.0:8080

