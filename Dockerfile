# syntax=docker/dockerfile:1

FROM python:3.10-bullseye

WORKDIR /app

RUN apt-get update && apt-get install -y \
    libsndfile1

COPY . .

RUN pip3 install -r requirements.txt

EXPOSE 7865

CMD ["python3", "infer-web.py"]