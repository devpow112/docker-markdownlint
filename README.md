> This repository is deprecated and will no longer be updated or maintined.
> Please consider using one of these alternatives instead of this repository and
> the associated docker image
> 
> * [DavidAnson/markdownlint-cli2]
> * [DavidAnson/markdownlint-cli2-action]
> * [igorshubovych/markdownlint-cli]

# Docker MarkdownLint

[![License]](LICENSE)
[![Release][Release Badge]][Release Workflow]

Docker container containing all needed tools to run **MarkdownLint**. Each
container will contain only one version of the **MarkdownLint** but will contain
all additional libraries needed.

## Usage

There are 2 ways to use this container [Interactive](#interactive) and
[Command](#command) mode.

### Interactive

This will drop you into an interactive `bash` session.

```bash
docker run -it -v /src:/src markdownlint
```

### Command

This will run the supplied command directly.

```bash
docker run -v /src:/src markdownlint [command]
```

## Building

```bash
docker build -t markdownlint .
```

<!-- external links -->
[License]: https://img.shields.io/github/license/devpow112/docker-markdownlint?label=License
[Release Badge]: https://github.com/devpow112/docker-markdownlint/actions/workflows/release.yml/badge.svg?branch=main
[Release Workflow]: https://github.com/devpow112/docker-markdownlint/actions/workflows/release.yml?query=branch%3Amain
[DavidAnson/markdownlint-cli2-action]: https://github.com/DavidAnson/markdownlint-cli2-action
[DavidAnson/markdownlint-cli2]: https://github.com/DavidAnson/markdownlint-cli2
[igorshubovych/markdownlint-cli]: https://github.com/igorshubovych/markdownlint-cli
