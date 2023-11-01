FROM debian:bullseye-slim
COPY . .
RUN apt-get update && apt-get install --no-install-recommends --yes curl
RUN /bin/bash ./redpanda_deb.sh
RUN apt-get update && apt-get install --no-install-recommends --yes redpanda