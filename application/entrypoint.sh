#!/bin/bash

python manage.py migrate

python manage.py collectstatic

gunicorn django_app.wsgi:application --bind 0.0.0.0:8000 --workers 3