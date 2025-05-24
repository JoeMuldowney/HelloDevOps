# Use official Python image
FROM python:3.12-slim

# Set workdir
WORKDIR /app

# Copy files
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app.py .

# Expose port and run app
EXPOSE 5000
CMD ["python", "app.py"]