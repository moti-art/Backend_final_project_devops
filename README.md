# Backend_final_project_devops# Weather Service (Backend)

This is a Flask-based microservice that fetches current weather data from the OpenWeatherMap API.

## Prerequisites
* Docker installed
* OpenWeatherMap API Key (Free tier)

## Installation & Local Setup
1.Clone the repository.

2.Navigate into the folder.

3.Build the Docker image:

Bash
docker build -t weather-backend .

Environment Variables
This service requires an API key to function. Do not hardcode the key in the source code.
The application reads the key from an environment variable named: OPENWEATHER_API_KEY.

Running the Service
To run the service, use the following command, replacing your_api_key_here with your actual key:

Bash
docker run -p 5000:5000 -e OPENWEATHER_API_KEY="your_api_key_here" weather-backend
API Endpoints
Get Weather
URL: /weather/<location_key>

Method: GET

Example: curl http://localhost:5000/weather/Sydney

Response Format:

JSON
{
  "description": "clear sky",
  "humidity": 65,
  "location": "Sydney",
  "temperature": 22.5,
  "wind_speed": 4.1
}