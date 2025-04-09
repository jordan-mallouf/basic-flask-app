# Base Image
FROM alpine:latest

# Install python and pip
RUN apk add --no-cache python3 py3-pip

# Set working directory inside the container
WORKDIR /usr/src/app

# Install python modules & dependencies needed for the app
COPY requirements.txt .
RUN pip install --no-cache-dir --break-system-packages -r requirements.txt

# Copy files required for the app to run
COPY app.py .
COPY templates/ templates/

# Expose the port to run the app
EXPOSE 5000

# Run the app
CMD ["python3", "app.py"]