FROM vabene1111/recipes:latest

# Render provides $PORT, but the image defaults to 8080
# we’ll adjust boot.sh to respect $PORT

COPY render_boot.sh /opt/recipes/render_boot.sh
RUN chmod +x /opt/recipes/render_boot.sh

ENTRYPOINT ["/sbin/tini", "--", "/opt/recipes/render_boot.sh"]
