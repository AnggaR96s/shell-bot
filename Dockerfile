FROM gengkapak/hirsutehippo:latest

# Install apt
RUN apt -y update; apt install -y \
  git \
  nodejs \
  npm

RUN git clone https://github.com/AnggaR96s/shell-bot /app/shellbot
ADD config.json /
COPY config.json /app/shellbot/

WORKDIR /app/shellbot
RUN npm install

CMD ["node","server"]
