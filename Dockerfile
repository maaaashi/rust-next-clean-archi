FROM rust:1.54-slim-buster

ARG USERNAME=user
ARG GROUPNAME=user
ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID $GROUPNAME && \
    useradd -m -s /bin/bash -u $UID -g $GID $USERNAME
USER $USERNAME

COPY ./ /var/www/app/

WORKDIR /var/www/app/

USER 1000