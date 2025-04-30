# Use an official Python runtime
FROM python:3.11-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Create working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# Command to run Gunicorn with multiple workers
CMD ["gunicorn", "--workers=4", "--threads=2", "--bind=0.0.0.0:8000", "main:app"]
