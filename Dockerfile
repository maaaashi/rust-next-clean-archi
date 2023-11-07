FROM rust:1.54-slim-buster

ARG USERNAME=user
ARG GROUPNAME=user
ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID $GROUPNAME && \
    useradd -m -s /bin/bash -u $UID -g $GID $USERNAME

COPY ./rust /var/www/app/
RUN chown -R $USERNAME:$USERNAME /var/www/app/

WORKDIR /var/www/app/

USER $USERNAME

RUN bash ./cargo-build.sh