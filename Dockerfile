FROM ubuntu:22.04
WORKDIR /app

RUN apt-get update && \
    apt-get install -y cowsay fortune-mod netcat && \
    apt-get clean

ENV PATH="${PATH}:/usr/games"

COPY . /app
RUN chmod +x wisecow.sh

EXPOSE 4499
CMD ["./wisecow.sh"]

