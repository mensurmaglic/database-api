FROM python:3.12.3-slim-bullseye

ARG VERSION
ENV VERSION=${VERSION}

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY ./src .

EXPOSE 8000
CMD [ "uvicorn", "--host", "0.0.0.0", "--port", "8000", "main:app" ]
