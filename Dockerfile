FROM node:14.17.6-slim

# set input arguments to defaults
ARG MARKDOWNLINT_VERSION="0.27.1"

# install packages
RUN npm i -g --production --no-optional markdownlint-cli@${MARKDOWNLINT_VERSION}

# default command
CMD ["/bin/bash"]

# labels
LABEL maintainer devpow112 \
      org.opencontainers.image.authors devpow112 \
      org.opencontainers.image.description \
        "Docker container containing all needed tools to run MarkdownLint." \
      org.opencontainers.image.documentation \
        https://github.com/devpow112/docker-markdownlint#readme \
      org.opencontainers.image.licenses MIT \
      org.opencontainers.image.source \
        https://github.com/devpow112/docker-markdownlint \
      org.opencontainers.image.title "Docker MarkdownLint" \
      org.opencontainers.image.url \
        https://github.com/devpow112/docker-markdownlint \
      org.opencontainers.image.vendor devpow112
