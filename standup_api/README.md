First as usual you will need to sync your repo to pull the new files. To run this API, change your directory to the docker folder and run:

"docker compose up -d"

Run the following curl command to get a response

"curl https://flask-app-hw-860094761515.us-central1.run.app"

Finally, let's test out some predictions. If you open the prediction.py script you can see that the inputs into the model are "am", "carb", "cyl", "disp", "drat" and "gear","hp", "qsec","vs" and "wt". We will pass these through a json formatted input through a curl POST request to the API. This is done as

"curl -H "Content-Type: application/json" -X POST \
  -d '{"am":1,"carb":4,"cyl":6,"disp":160,"drat":3.9,"gear":4,"hp":110,"qsec":16.46,"vs":0,"wt":2.62}' \
  https://flask-app-hw-860094761515.us-central1.run.app/predict_mpg"



You can change some of the values to see the prediction change. Both of the curl commands can be found in the file curl_test.sh. As usual, check to see if you have any docker containers running using docker container ls and stop them through docker componse down -v
