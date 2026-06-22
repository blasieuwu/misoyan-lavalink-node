FROM ghcr.io/lavalink-devs/lavalink:4-alpine

# copy your local configuration file into the runtime container
COPY application.yml /opt/Lavalink/application.yml

WORKDIR /opt/Lavalink

# 🔑 THE FIX: safely maps render's $PORT straight into lavalink's expected variable at launch
CMD ["sh", "-c", "java -jar Lavalink.jar --server.port=${PORT}"]
