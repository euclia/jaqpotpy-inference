FROM python:3.10
MAINTAINER Jason Sotiropoulos <jasonsoti1@gmail.com>
MAINTAINER Pantelis Karatzas <pantelispanka@gmail.com>

ADD requirements /jaqpotpy-inference/requirements

RUN pip install --upgrade pip
RUN pip install -r /jaqpotpy-inference/requirements
RUN pip install torch-scatter torch-sparse torch-cluster torch-spline-conv torch-geometric -f https://data.pyg.org/whl/torch-1.13.0+cpu.html
