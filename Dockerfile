FROM node:16.14.0-slim

# set input arguments to defaults
ARG MARKDOWNLINT_VERSION="0.31.1"

# install packages
RUN export DEBIAN_FRONTEND='noninteractive' && \
    echo '###### Set up packages' && \
    npm i -g --production --no-optional \
      markdownlint-cli@${MARKDOWNLINT_VERSION} && \
    echo '###### Clean up' && \
    apt-get autoremove --purge -y && \
    apt-get autoclean && \
    apt-get clean && \
    rm -rf \
      /var/lib/apt/lists/* \
      /var/tmp/* \
      /var/log/* \
      /tmp/*

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
