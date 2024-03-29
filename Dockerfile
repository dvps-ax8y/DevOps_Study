FROM ubuntu:14.04
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
ADD ./webapp/requirements.txt /tmp/requirements.txt
pip install -qr /tmp/requirements.txt
ADD ./webapp /opt/webapp/
EXPOSE 5000
CMD ["python", "app.py"]
