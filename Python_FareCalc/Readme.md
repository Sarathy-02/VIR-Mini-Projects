# FareCalc: Ride Estimate Optimizer (Python)

## Project Overview
FareCalc is a backend utility developed for "CityCab," a ride-sharing startup. It automates the calculation of ride fares based on travel distance, vehicle preference, and peak-hour adjustments.

## Problem Statement
The script provides a dynamic "Ride Estimate" by calculating costs based on specific vehicle rates and applying surge pricing when necessary.

## Key Features
* **Tiered Pricing Model**: Manages service rates for 'Economy', 'Premium', and 'SUV' through an organized dictionary structure.
* **Dynamic Surge Pricing**: Automatically applies a 1.5x surge multiplier if the ride occurs during peak hours (17:00 to 20:00).
* **Service Validation**: Includes checks to ensure the requested vehicle type is available, providing a "Service Not Available" message for unsupported requests.
* **Professional Reporting**: Generates a formatted "Price Receipt" for the user after processing their distance and time inputs.

## Deliverables
* **fare_calc.py**: A Python script containing the core fare calculation function and user input logic.
