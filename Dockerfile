FROM node:14.15.3-slim

# install packages
RUN npm i -g markdownlint-cli

# default command
CMD ["bash"]

# labels
LABEL maintainer devpow112
LABEL org.opencontainers.image.source \
      https://github.com/devpow112/docker-markdownlint
