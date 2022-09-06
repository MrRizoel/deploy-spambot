FROM sandy1709/catuserbot:alpine

#clonning repo 
RUN git clone https://github.com/MrRizoel/RiZoeLXSpam.git /root/RiZoeLXSpam
#working directory 
WORKDIR /root/RiZoeLXSpam

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/RiZoeLXSpam/bin:$PATH"

CMD ["python3","-m","RiZoeLXSpam"]
