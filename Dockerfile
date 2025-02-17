FROM python:3.13.2-slim

WORKDIR /app

COPY requirements.txt ./requirements.txt

RUN pip install -r ./requirements.txt

COPY . ./

CMD ["gunicorn", "django_app.wsgi:application", "--worker 3", "--bind", "0.0.0.0:8000"]

