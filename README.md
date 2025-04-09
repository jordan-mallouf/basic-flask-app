# Flask Cat GIF App
A lightweight Flask web application that displays a random cat GIF on each page load. 
This project serves as an introduction to building simple Flask apps and containerizing them using Docker.

## Project Structure
flask-app
* app.py
* Dockerfile
* requirements.txt
* templates/
  * index.html

### Prerequisites
- Python 3.10 or higher
- pip
- Docker (optional, for containerization)

### Run Locally
Clone the repository!
```
git clone https://github.com/jordan-mallouf/basic-flask-app.git
cd basic-flask-app
python3 app.py
```

## 1. Install dependencies
``` pip install -r requirements.txt ```

## 2. Run the application
```
python app.py
```
or
```
python3 app.py
```

## Running w/ Docker
### Build the Docker Image
```
docker build -t yourusername/basic-flask-app .
```

### Run the Docker Container
```
docker run -p 8888:5000 --name basic-flask-app yourusername/basic-flask-app
```
Then visit http://localhost:8888

## Push to Docker Hub (Optional)
1. Log in to the __Docker Hub__
``` docker login ```
2. Push the image
``` docker push yourusername/basic-flask-app ```
3. Clean up
```
docker stop basic-flask-app
docker rm basic-flask-app
```

## Dockerfile (3.10 Alpine)
Coming soon!

## Tech Stack
* Python 3.10+
* Flask package
* HTML/CSS
* Docker
