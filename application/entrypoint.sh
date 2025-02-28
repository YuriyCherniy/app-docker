#!/bin/bash

python manage.py collectstatic --noinput

gunicorn django_app.wsgi:application --bind 0.0.0.0:8000 --workers 3