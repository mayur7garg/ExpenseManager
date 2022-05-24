FROM python:3.9.13

WORKDIR /code

RUN apt-get update && apt-get install -y git
RUN pip install --upgrade pip

ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
COPY . .
CMD ["flask", "run"]