# Use official Tandoor Recipes image
FROM vabene1111/recipes:latest

# Expose the port for Azure
EXPOSE 8080

# Run migrations, collect static files, then start Gunicorn
CMD python3 manage.py migrate --noinput && \
    python3 manage.py collectstatic --noinput && \
    gunicorn recipes.wsgi:application --bind 0.0.0.0:8080 --workers=4
