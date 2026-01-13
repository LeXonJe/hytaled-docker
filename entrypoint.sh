#!/bin/sh

# TODO: check if files already exist

echo "[INIT] Downloading newest server files..."
if ! /hytale/hytale-downloader-linux-amd64 -download-path /data/server.zip; then
  echo "[INIT] Download failed. Aborting..."
  exit $?
fi

echo "[INIT] Extracting archive server.zip"
if ! unzip -o /data/server.zip; then
  echo "[INIT] Unzipping server.zip failed. Aborting..."
  exit $?
fi

cd /data/Server
echo [INIT] Starting Hytale Server with $JAVA_FLAGS
java $JAVA_FLAGS -XX:AOTCache=HytaleServer.aot -jar HytaleServer.jar --assets /data/Assets.zip
