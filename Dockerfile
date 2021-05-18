FROM node:14.17.0-slim

# install packages
RUN npm i -g --only=prod markdownlint-cli

# default command
CMD ["/bin/bash"]

# labels
LABEL maintainer devpow112 \
      org.opencontainers.image.licenses MIT \
      org.opencontainers.image.authors devpow112 \
      org.opencontainers.image.vendor devpow112 \
      org.opencontainers.image.title "Docker Markdownlint" \
      org.opencontainers.image.description \
        "Docker container containing all needed tools to run Markdownlint." \
      org.opencontainers.image.documentation \
        https://github.com/devpow112/docker-markdownlint#readme \
      org.opencontainers.image.source \
        https://github.com/devpow112/docker-markdownlint \
      org.opencontainers.image.url \
        https://github.com/devpow112/docker-markdownlint
