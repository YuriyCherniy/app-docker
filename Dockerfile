FROM python:3.13.2-slim

WORKDIR /app

COPY requirements.txt ./requirements.txt

RUN pip install -r requirements.txt

COPY . ./

CMD ["python3", "app-docker/manage.py", "runserver", "0.0.0.0:8000"]
