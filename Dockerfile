FROM eclipse-temurin:25-alpine
WORKDIR /app

RUN apk add --no-cache curl unzip

COPY entrypoint.sh .

RUN curl https://downloader.hytale.com/hytale-downloader.zip -o hytale-downloader.zip && \
  unzip hytale-downloader.zip hytale-downloader-linux-amd64 && \
  rm hytale-downloader.zip

CMD [ "bash", "entrypoint.sh" ]
