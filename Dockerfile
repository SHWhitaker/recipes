FROM vabene1111/recipes:latest

# Render sets $PORT automatically, so we bind to it
CMD ["gunicorn", "recipes.wsgi:application", "--bind", "0.0.0.0:${PORT}", "--workers=4"]
