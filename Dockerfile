FROM node:14.16.1-slim

# install packages
RUN npm i -g --only=prod markdownlint-cli

# default command
CMD ["bash"]

# labels
LABEL maintainer devpow112
LABEL org.opencontainers.image.source \
      https://github.com/devpow112/docker-markdownlint
