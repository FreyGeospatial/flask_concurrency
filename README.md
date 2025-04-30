# Build the image
docker build -t flask-gunicorn-app .

# Run the container
docker run -p 8000:8000 flask-gunicorn-app
