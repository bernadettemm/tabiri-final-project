# TABIRI - Heart Disease Risk Prediction Mobile App

## Overview

This project implements a mobile application for predicting heart disease risk based on user inputs. 
The Project includes:
- A Flutter mobile application: This is to be used by end user and provides an interface to interact with the prediction system and gain knowledge on everything related to heart diseases. (The ML model used for prediction is logistic regression)
<img src="https://github.com/bernadettemm/tabiri-final-project/blob/main/Login%20page.jpeg?raw=true" alt="Alt Text" width="300">
- A streamlit App: for data visualization and contain different ML models used.
  <img src="https://github.com/bernadettemm/tabiri-final-project/blob/main/Streamlit%20app.png?raw=true" alt="Alt Text" width="500">
- A flask API connected to the mobile application for the machine learning prediction.

## Table of Contents

1. [Introduction](#introduction)
2. [Prerequisites](#prerequisites)
3. [Getting Started](#getting-started)
    - [Flask API Setup](#flask-api-setup)
    - [Flutter Mobile App Setup](#flutter-mobile-app-setup)
    - [Streamlit App Setup](#streamlit-app-setup)
4. [Usage](#usage)
5. [Contributing](#contributing)

## Introduction

This project aims to provide users with a mobile app for predicting their risk of heart disease based on various health attributes. 
The app uses machine learning models trained on a heart disease dataset to make predictions.

## Prerequisites

Before running the application, ensure you have the following installed:

- Python 3.x with pip
- Flutter SDK
- Dart
- Android SDK or Xcode (for mobile app testing on emulators/physical devices)
- Node.js (for Streamlit app)

## Getting Started

### Flask API Setup

1. Clone this repository to your local machine.
2. Navigate to the `flask_api` directory.
3. (Optional) Create a virtual environment: `python -m venv venv`
4. Activate the virtual environment:
   - On Windows: `venv\Scripts\activate`
   - On macOS/Linux: `source venv/bin/activate`
5. Install the required Python packages: `pip install -r requirements.txt`
6. Run the Flask API server: `python app.py`

The Flask API will start running at `http://127.0.0.1:8000`.

### Flutter Mobile App Setup

1. Navigate to the `flutter_app` directory.
2. Connect a physical device or start an emulator.
3. Run the Flutter app: `flutter run`

The app should build and install on the connected device or emulator.


### Streamlit App Setup

1. Navigate to the `streamlit_app` directory.
2. (Optional) Create a virtual environment: `python -m venv venv`
3. Activate the virtual environment:
   - On Windows: `venv\Scripts\activate`
   - On macOS/Linux: `source venv/bin/activate`
4. Install the required Python packages: `pip3 install -r requirements.txt`
5. Run the Streamlit app: `streamlit run app.py`

The app should start running, and a local URL will be provided to access the app in the browser.

## Usage

1. Open the Flutter app on your mobile device or emulator.
2. Enter your health attributes to predict your risk of heart disease.
3. View the prediction results in the app.
4. (Optional) Access the Streamlit app in your browser to visualize data related to heart disease risk.

## Contributing

Contributions are welcome! If you encounter any issues or have suggestions for improvements, please feel free to create a pull request or open an issue.


