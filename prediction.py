import pandas as pd
import numpy as np
from sklearn.linear_model import LinearRegression

# Load data
data = pd.read_csv("mtcars.csv")

# Drop the 'model' column if it exists
if 'model' in data.columns:
    data = data.drop(columns=['model'])

# Separate features and target
labels = data['mpg']
train1 = data.drop(['mpg'], axis=1)

# Column list for prediction
col_imp = train1.columns.tolist()

# Train model
clf = LinearRegression()
clf.fit(train1[col_imp], labels)

# Prediction function
def predict(dict_values, col_imp=col_imp, clf=clf):
    x = np.array([float(dict_values[col]) for col in col_imp])
    x = x.reshape(1, -1)
    y_pred = clf.predict(x)[0]
    return y_pred


