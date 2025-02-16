FROM python:3.13.2-slim

WORKDIR /app

COPY requirements.txt ./requirements.txt

RUN pip install -r requirements.txt

COPY . ./

CMD ["python", "./app/manage.py", "runserver", "0000:8000"]