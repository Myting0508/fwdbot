FROM python:latest

RUN apt-get update \
    && apt-get upgrade \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
COPY botz.py /app
WORKDIR /app


RUN pip install --no-cache-dir -Ur requirements.txt
CMD ["python3", "botz.py"]