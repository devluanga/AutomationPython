# base image
FROM python:3.9-slim-buster

WORKDIR /app

COPY . /app

COPY configs/requirements.txt app/requirements.txt

# install requirements
RUN pip install --no-cache-dir -r /app/configs/requirements.txt

EXPOSE 12

CMD [ "python", "-m", "app/main.py" ]