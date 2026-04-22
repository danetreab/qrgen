FROM alpine:3.20

WORKDIR /app
COPY qr_code_generator.html /app/index.html

# Coolify can inject PORT; default to 8080 for local runs.
EXPOSE 8080
CMD ["sh", "-c", "busybox httpd -f -p ${PORT:-8080} -h /app"]
