FROM openjdk:22-slim
LABEL org.opencontainers.image.authors="vividvilla@gmail.com"

# Rundeck cli release version - https://github.com/rundeck/rundeck-cli/releases
# Note that version is without `v` prefix because folder names inside the zip doesn't follow the same semantics.
ARG RD_CLI_VERSION="2.0.6"

# Install required deps.
RUN apt-get update && apt-get install -y curl unzip

# Download, unzip and move rename the root folder to `rundeck-cli` directory.
RUN curl -L -o rd-${RD_CLI_VERSION}.zip https://github.com/rundeck/rundeck-cli/releases/download/v${RD_CLI_VERSION}/rd-${RD_CLI_VERSION}.zip
RUN unzip rd-${RD_CLI_VERSION}.zip
RUN mv rd-${RD_CLI_VERSION} ./rundeck-cli

ENV RD_AUTH_PROMPT false

ENTRYPOINT ["./rundeck-cli/bin/rd"]
CMD ["--help"]
