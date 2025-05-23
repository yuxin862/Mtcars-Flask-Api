First as usual you will need to sync your repo to pull the new files. To run this API, change your directory to the docker folder and run:

docker compose up -d

If it has created the localhost server correctly you will not get your prompt back. You will need to open a new terminal (be in the same directory) and run the following curl command to get a response

curl http://localhost:5001/

Finally, let's test out some predictions. If you open the prediction.py script you can see that the inputs into the model are "am", "carb", "cyl", "disp", "drat" and "gear","hp", "qsec","vs" and "wt". We will pass these through a json formatted input through a curl POST request to the API. This is done as

# Send test POST request with mtcars features
curl -H "Content-Type: application/json" -X POST \
  -d '{"am":1,"carb":4,"cyl":6,"disp":160,"drat":3.9,"gear":4,"hp":110,"qsec":16.46,"vs":0,"wt":2.62}' \
  http://localhost:5001/predict_mpg
