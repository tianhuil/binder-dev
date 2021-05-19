FROM frolvlad/alpine-miniconda3

# From https://github.com/Docker-Hub-frolvlad/docker-alpine-miniconda3

# Linking of locale.h as xlocale.h
# This is done to ensure successfull install of python numpy package
# see https://forum.alpinelinux.org/comment/690#comment-690 for more information.

WORKDIR /var/workdir/

COPY environment.yml .

RUN /opt/conda/bin/conda env create --quiet -f environment.yml && \
    /opt/conda/bin/conda clean --yes --all

EXPOSE 8888

CMD ["jupyter", "notebook", "--allow-root"]
