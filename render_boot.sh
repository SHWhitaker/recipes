#!/bin/sh
set -e

# run DB migrations
python3 manage.py migrate --noinput

# collect static files
python3 manage.py collectstatic --noinput

# start gunicorn, binding to Render’s port
exec gunicorn recipes.wsgi:application --bind 0.0.0.0:$PORT --workers=4
