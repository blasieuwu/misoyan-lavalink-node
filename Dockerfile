FROM ghcr.io/lavalink-devs/lavalink:4-alpine

# copy your local configuration file into the runtime container
COPY application.yml /opt/Lavalink/application.yml

# map render's default web service routing variables
ENV SERVER_PORT=10000
EXPOSE 10000

WORKDIR /opt/Lavalink

# boot up the node cleanly
CMD ["java", "-jar", "Lavalink.jar"]
