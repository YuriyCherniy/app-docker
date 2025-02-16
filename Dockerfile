FROM python:3.13.2-slim

WORKDIR /app

COPY requirements.txt ./requirements.txt

RUN pip install -r ./requirements.txt

COPY . ./

<<<<<<< HEAD
CMD ["python3", "app-docker/manage.py", "runserver", "0.0.0.0:8000"]
=======

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
>>>>>>> f655452206786efc53b9744b41b068abe93532c8
