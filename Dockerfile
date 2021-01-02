FROM tensorflow/tensorflow:latest-gpu-py3
FROM tensorflow/tensorflow:2.4.0-gpu

LABEL maintainer="endrem@hi.no"

RUN apt-get update && apt-get install -y git

RUN apt-get install python3

RUN pip install --upgrade pip

#RUN pip uninstall -y tensorflow-gpu

#RUN pip uninstall -y tensorflow

#RUN pip install tensorflow-gpu

#RUN pip install tensorflow

RUN pip install keras

RUN pip install pandas

RUN pip install sklearn

RUN pip install scipy

RUN pip install pillow

RUN pip install scikit-image

#RUN pip install -U git+https://github.com/qubvel/efficientnet

RUN pip install opencv-python-headless

RUN pip install opencv-contrib-python-headless

RUN pip install transformers

RUN chmod 777 -R /usr/local/lib/python3.6/

RUN useradd -m endrem
USER endrem
RUN echo $HOME
RUN export HOME=/home/endrem
RUN chmod 777 -R /home/endrem

#RUN apt install libcublas-11-0
#RUN apt install libcusparse-11-0
#RUN apt install libcudnn8
#RUN apt install libcupti9.1
#RUN apt install cuda
