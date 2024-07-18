FROM nvcr.io/nvidia/l4t-pytorch:r35.2.1-pth2.0-py3
RUN python3 -m pip install matplotlib opencv-python torch torchaudio torchvision wandb
RUN python3 -m pip install 'numpy<2' 
RUN python3 -m pip install timm==0.6.12
RUN cd /root && git clone https://github.com/CVLAB-Unibo/Depth4ToM-code.git
RUN cd /root/Depth4ToM-code
WORKDIR /root/Depth4ToM-code
# RUN python3 -m pip install -r requirements.txt

RUN apt update && apt install -y eog nano
COPY reinstall-opencv.sh /root/Depth4ToM-code

