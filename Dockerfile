# Use Python 3.10.11 base image
FROM python:3.10.11

# Set working directory inside the container
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy Python script into the container
COPY . .

# Set entrypoint to run the script
CMD ["python", "no_ddp_gc.py"]
