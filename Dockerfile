FROM python:3
WORKDIR /app
COPY payment.ini .
COPY payment.py  .
COPY rabbitmq.py .
COPY requirements.txt .
RUN pip3 install -r requirements.txt
CMD ["/usr/local/bin/uswgi","--ini","payment.ini"]