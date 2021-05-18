FROM node:14.17.0-slim

# install packages
RUN npm i -g --only=prod markdownlint-cli

# default command
CMD ["/bin/bash"]
        
# labels
LABEL maintainer devpow112
LABEL org.opencontainers.image.authors devpow112
LABEL org.opencontainers.image.description \
        "Docker container containing all needed tools to run Markdownlint."
LABEL org.opencontainers.image.documentation \
        https://github.com/devpow112/docker-markdownlint#readme
LABEL org.opencontainers.image.licenses MIT
LABEL org.opencontainers.image.source \
        https://github.com/devpow112/docker-markdownlint
LABEL org.opencontainers.image.title "Docker Markdownlint"
LABEL org.opencontainers.image.url \
        https://github.com/devpow112/docker-markdownlint
LABEL org.opencontainers.image.vendor devpow112
