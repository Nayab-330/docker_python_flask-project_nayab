# FROM python:3.6
# MAINTAINER veera "veera.narni232@gmail.com"
# COPY . /app
# WORKDIR /app
# RUN pip install -r requirements.txt
# EXPOSE 5000
# #ENTRYPOINT ["python"]
# #CMD ["app.py"]
# CMD ["python", "app.py"]


FROM ubuntu
WORKDIR /app
COPY . /app
#RUN apt-get update && apt-get install -y python3 python3-pip && pip3 install -r requirements.txt  OR
#RUN apt-get update && apt-get install -y python3 python3-pip
#RUN pip3 install -r requirements.txt   #getting error in current version of ubuntu, not docker issue
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install --break-system-packages -r requirements.txt
EXPOSE 5000 
CMD ["python3", "app.py"]
