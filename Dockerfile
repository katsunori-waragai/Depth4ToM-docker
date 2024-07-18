FROM nvcr.io/nvidia/l4t-pytorch:r35.2.1-pth2.0-py3
RUN cd /root && git clone https://github.com/CVLAB-Unibo/Depth4ToM-code.git
RUN cd /root/Depth4ToM-code
WORKDIR /root/Depth4ToM-code
RUN python3 -m pip install -r requirements.txt

