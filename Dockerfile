FROM pytorch/pytorch:1.7.1-cuda11.0-cudnn8-runtime
RUN apt-get update && apt-get install -y libsm6 libxext6 libxrender-dev vim wget sudo psmisc locales cmake vim htop zip

RUN locale-gen en_US.UTF-8
ADD https://gitlab.nautilus.optiputer.net/jiacheng/nautilus/-/raw/master/yaml/torch17.yml /tmp/environment.yml

RUN conda env create --file /tmp/environment.yml && conda init bash && echo "source activate torch" >> ~/.bashrc
ENV PATH /opt/conda/envs/torch/bin:$PATH

ADD https://github.com/cdr/code-server/releases/download/3.0.1/code-server-3.0.1-linux-x86_64.tar.gz ./ 
RUN tar -xvzf code-server-3.0.1-linux-x86_64.tar.gz && rm -r code-server-3.0.1-linux-x86_64.tar.gz && code-server-3.0.1-linux-x86_64/code-server --install-extension ms-python.python
