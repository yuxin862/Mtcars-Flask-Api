#!/bin/bash

# Check server status
curl https://flask-app-hw-860094761515.us-central1.run.app

# Send test POST request with mtcars features
curl -H "Content-Type: application/json" -X POST \
  -d '{"am":1,"carb":4,"cyl":6,"disp":160,"drat":3.9,"gear":4,"hp":110,"qsec":16.46,"vs":0,"wt":2.62}' \
  https://flask-app-hw-860094761515.us-central1.run.app/predict_mpg
