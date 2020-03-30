FROM pytorch/pytorch:1.4-cuda10.1-cudnn7-runtime
# FROM ubuntu:16.04
# FROM continuumio/anaconda3:2020.02
# FROM conda:c3i-linux-64
RUN apt-get update && apt-get install -y libsm6 libxext6 libxrender-dev vim wget sudo psmisc locales
# ADD https://gitlab.nautilus.optiputer.net/jiacheng/nautilus/-/raw/master/pytorch.yml /tmp/environment.yml
ADD https://gitlab.nautilus.optiputer.net/jiacheng/nautilus/-/raw/master/environment.yml /tmp/environment.yml
# ADD https://gitlab.nautilus.optiputer.net/JerryYLi/docker-test/raw/video-ssl/environment.yml /tmp/environment.yml
RUN conda env create --file /tmp/environment.yml
RUN conda init bash 
RUN echo "source activate torch" >> ~/.bashrc
ENV PATH /opt/conda/envs/torch/bin:$PATH
RUN locale-gen en_US.UTF-8

ADD https://github.com/cdr/code-server/releases/download/3.0.1/code-server-3.0.1-linux-x86_64.tar.gz ./ 
RUN tar -xvzf code-server-3.0.1-linux-x86_64.tar.gz && rm -r code-server-3.0.1-linux-x86_64.tar.gz 
RUN code-server-3.0.1-linux-x86_64/code-server --install-extension ms-python.python
 
RUN git config --global user.name "ChengJiacheng" && git config --global user.email "chinging@foxmail.com" 
RUN git config --global credential.helper cache && git config --global credential.helper 'cache --timeout=3600'


# RUN /data/jiacheng/code-server-3.0.1-linux-x86_64/code-server