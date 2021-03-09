FROM jupyter/datascience-notebook

USER root

RUN apt-get update -q -y && \
    apt-get install -q -y \
    build-essential \
    mecab \
    libmecab-dev \
    mecab-ipadic-utf8 \
    git \
    make \
    curl \
    wget \
    xz-utils \
    bzip2 \
    zip \
    file \
    libjuman \
    libcdb-dev \
    zlib1g-dev \
    sudo

ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt