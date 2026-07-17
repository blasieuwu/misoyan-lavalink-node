FROM ghcr.io/lavalink-devs/lavalink:4-alpine

# expose render's web service port
EXPOSE 10000

# copy the configuration file into the directory lavalink expects it
COPY application.yml /opt/Lavalink/application.yml

# launch lavalink
CMD ["java", "-jar", "Lavalink.jar"]