# Use Pixi base image
FROM ghcr.io/prefix-dev/pixi:latest

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/Lightbug-HQ/lightbug_http

WORKDIR /lightbug_http

ARG DEFAULT_SERVER_HOST=localhost
ARG DEFAULT_SERVER_PORT=8080

EXPOSE ${DEFAULT_SERVER_PORT}

ENV DEFAULT_SERVER_HOST=${DEFAULT_SERVER_HOST}
ENV DEFAULT_SERVER_PORT=${DEFAULT_SERVER_PORT}
ENV APP_ENTRYPOINT=lightbug.🔥

# Create Pixi workspace inside the WORKDIR.
RUN pixi init -c "https://conda.modular.com/max" -c "https://repo.prefix.dev/modular-community" -c "conda-forge"

# Add Mojo compiler.
# RUN pixi add mojo

# Add Mojo compiler.
# Get the mojo version (or max in this case) from the GitHub repo's pixi.toml/mojoproject.toml file:
# https://github.com/Lightbug-HQ/lightbug_http/blob/main/mojoproject.toml
RUN pixi add "max>=25.4.0,<25.5.0"

# Activate the Pixi environment
RUN pixi shell

# CMD magic run mojo ${APP_ENTRYPOINT}
CMD ["mojo", "${APP_ENTRYPOINT}"]
