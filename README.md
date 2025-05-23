# Mtcars-Flask-Api

This project builds a Flask-based web API that predicts the fuel efficiency of cars based on the `mtcars.csv` dataset. It uses a linear regression model trained in Python and is containerized using Docker. The API is deployed both locally and on Google Cloud Run for easy access and reproducibility.


- Trains a linear regression model using `mpg` as the target variable.
- Uses all other numerical features from `mtcars.csv` as predictors.
- Wraps the model in a Flask API that accepts JSON POST requests.
- Builds and runs the API inside a Docker container.
- Publishes the image to DockerHub.
- Deploys the container to Google Cloud Run, exposing it to the public.
