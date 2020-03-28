FROM pytorch/pytorch
RUN apt-get update
RUN apt-get install -y libsm6 libxext6 libxrender-dev vim
ADD https://gitlab.nautilus.optiputer.net/jiacheng/nautilus/blob/master/environment.yml /tmp/environment.yml
RUN conda env create -f /tmp/environment.yml
RUN conda init bash
RUN echo "source activate video-ssl" >> ~/.bashrc
ENV PATH /opt/conda/envs/video-ssl/bin:$PATH
# RUN conda env create -f /environment.yml
# RUN conda init