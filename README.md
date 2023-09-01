# Rundeck CLI docker image

Docker image for [Rundeck CLI](https://rundeck.github.io/rundeck-cli/).

- [Dockerhub](https://hub.docker.com/r/vividvilla/rundeck-cli)
- [Configuration](https://docs.rundeck.com/docs/rd-cli/configuration.html)
- [Commands](https://docs.rundeck.com/docs/rd-cli/commands.html)

Docker release tag will always be same as upstream [release version](https://github.com/rundeck/rundeck-cli/releases), for example `v2.0.6` can be pulled as `vividvilla/rundeck-cli:2.0.6`.

## Usage

```sh
docker run --rm -e RD_URL="http://rundeck:4440" -e RD_TOKEN="your_token_here" vividvilla/rundeck-cli --help

# Run a particular version.
docker run --rm -e RD_URL="http://rundeck:4440" -e RD_TOKEN="your_token_here" vividvilla/rundeck-cli:2.0.6 --help

# Connect to Rundeck accessible from local network.
docker run --rm --network host -e RD_URL="http://rundeck:4440" -e RD_TOKEN="your_token_here" vividvilla/rundeck-cli --help

# User ENV file.
docker run --rm  --env-file ./path/to/.env vividvilla/rundeck-cli --help
```

## Contributing

- To update the version, change `RD_CLI_VERSION` in [Dockerfile](./Dockerfile#L6) and create a PR.

## License

[LICENSE](./LICENSE)
