# Base Image
FROM alpine:latest

# Install python and pip
RUN apk add --update python3 py3-pip

# Install python modules needed for the app
COPY requirements.txt /Users/malloufj/Downloads/program_files/flask-app
RUN pip install --no-cache-dir --break-system-packages -r /Users/malloufj/Downloads/program_files/flask-app/requirements.txt

# Copy files required for the app to run
COPY app.py /Users/malloufj/Downloads/program_files/flask-app/app.py
COPY templates/index.html /Users/malloufj/Downloads/program_files/flask-app/templates/

# Expose the port to run the app
EXPOSE 5000

# Run the app
CMD ["python", "/Users/malloufj/Downloads/program_files/flask-app/app.py"]