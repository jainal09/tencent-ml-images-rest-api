FROM tensorflow/tensorflow:1.4.1-gpu
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y python-pip
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get -y install libopencv-dev python-opencv
RUN pip install opencv-contrib-python
RUN pip install flask
RUN pip install -U Werkzeug==0.16.0
RUN pip install flask-restplus
COPY . .
WORKDIR /notebooks/tencent-ml-images
CMD flask run --host=0.0.0.0
