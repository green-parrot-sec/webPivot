FROM python:3.8-alpine
WORKDIR /app
RUN apk add --no-cache gcc musl-dev linux-headers alpine-sdk libressl-dev libffi-dev python3-dev
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 1080
COPY . .
