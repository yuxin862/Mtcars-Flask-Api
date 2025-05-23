#!/bin/bash

# Check server status
curl http://localhost:5001/

# Send test POST request with mtcars features
curl -H "Content-Type: application/json" -X POST \
  -d '{"am":1,"carb":4,"cyl":6,"disp":160,"drat":3.9,"gear":4,"hp":110,"qsec":16.46,"vs":0,"wt":2.62}' \
  http://localhost:5001/predict_mpg

