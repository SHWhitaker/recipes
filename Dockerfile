FROM vabene1111/recipes:latest

# Render expects you to listen on $PORT
ENV PORT=10000

# Just run the bundled boot script (it already starts gunicorn+nginx)
CMD ["/opt/recipes/boot.sh"]
