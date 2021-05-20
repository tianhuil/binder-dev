FROM continuumio/miniconda3:4.9.2-alpine

# From https://github.com/Docker-Hub-frolvlad/docker-alpine-miniconda3

# Linking of locale.h as xlocale.h
# This is done to ensure successfull install of python numpy package
# see https://forum.alpinelinux.org/comment/690#comment-690 for more information.

WORKDIR /var/workdir/

RUN apk add --no-cache bash

COPY environment.yml .

RUN /opt/conda/bin/conda env create --quiet -f environment.yml && \
    /opt/conda/bin/conda clean --yes --all

EXPOSE 8888

COPY start.sh .

CMD ["bash", "start.sh"]
