# Rundeck CLI docker image

Docker image for [Rundeck CLI](https://rundeck.github.io/rundeck-cli/).

- [Dockerhub](https://hub.docker.com/r/vividvilla/rundeck-cli)
- [Github package](https://github.com/vividvilla/rundeck-cli-docker/pkgs/container/rundeck-cli-docker)
- [Configuration](https://docs.rundeck.com/docs/rd-cli/configuration.html)
- [Commands](https://docs.rundeck.com/docs/rd-cli/commands.html)

Image tag will always be the same as upstream [release version](https://github.com/rundeck/rundeck-cli/releases) release tag. For example, [`v2.0.6`](https://github.com/rundeck/rundeck-cli/releases/tag/v2.0.6) can be pulled as `vividvilla/rundeck-cli:v2.0.6` or `ghcr.io/vividvilla/rundeck-cli-docker:v2.0.6`.

## Usage

- Use `vividvilla/rundeck-cli:latest` to pull from Dockerhub.
- Use `ghcr.io/vividvilla/rundeck-cli-docker:latest` to pull from Github container registry.

```sh
docker run --rm -e RD_URL="http://rundeck:4440" -e RD_TOKEN="your_token_here" vividvilla/rundeck-cli:latest --help

# Run a particular version.
docker run --rm -e RD_URL="http://rundeck:4440" -e RD_TOKEN="your_token_here" vividvilla/rundeck-cli:v2.0.6 --help

# Connect to Rundeck accessible from local network.
docker run --rm --network host -e RD_URL="http://rundeck:4440" -e RD_TOKEN="your_token_here" vividvilla/rundeck-cli:latest --help

# User ENV file.
docker run --rm  --env-file ./path/to/.env vividvilla/rundeck-cli:latest --help
```

## Contributing

- To update the version, change `RD_CLI_VERSION` in [Dockerfile](./Dockerfile#L6) and create a PR.

## License

[LICENSE](./LICENSE)
