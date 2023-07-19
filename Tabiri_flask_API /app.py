from flask import Flask, jsonify, request
from flask_cors import CORS
from joblib import load
import numpy as np

app = Flask(__name__)
CORS(app)
model = load('tabirimodel.joblib')

@app.route('/predict/', methods=['POST'])
def predict():
    payload = request.json['data']
    # Extract individual values from the payload map
    data = [
        payload['BMI'],
        payload['Smoking'],
        payload['AlcoholDrinking'],
        payload['Stroke'],
        payload['PhysicalHealth'],
        payload['MentalHealth'],
        payload['DiffWalking'],
        payload['Sex'],
        payload['AgeCategory'],
        payload['Race'],
        payload['Diabetic'],
        payload['PhysicalActivity'],
        payload['GenHealth'],
        payload['SleepTime'],
        payload['Asthma'],
        payload['KidneyDisease'],
        payload['SkinCancer'],
    ]
    input_data_as_numpy_array = np.asarray(data)
    input_data_reshaped = input_data_as_numpy_array.reshape(1, -1)
    prediction = model.predict(input_data_reshaped)
    message = ''
    if prediction[0] == 0:
        message = 'Your heart is healthy'
    else:
        message = 'Your heart is at risk. Please visit the nearest hospital for further check up.'
    return jsonify({
        'message': message
    })

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=8000)

