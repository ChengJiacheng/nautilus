# FROM pytorch/pytorch
# FROM ubuntu:16.04
FROM continuumio/anaconda3:2020.02
RUN apt-get update  \
    && apt-get install -y libsm6 libxext6 libxrender-dev vim wget sudo psmisc
ADD https://gitlab.nautilus.optiputer.net/JerryYLi/docker-test/raw/video-ssl/environment.yml /tmp/environment.yml
RUN conda env create -f /tmp/environment.yml \
    && conda init bash \
    && echo "source activate video-ssl" >> ~/.bashrc
ENV PATH /opt/conda/envs/video-ssl/bin:$PATH
RUN locale-gen en_US.UTF-8

# RUN conda env create -f /environment.yml
# RUN conda init

# RUN /data/jiacheng/code-server-3.0.1-linux-x86_64/code-server