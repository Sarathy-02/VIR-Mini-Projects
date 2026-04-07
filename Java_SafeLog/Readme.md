# SafeLog: Password Validation Utility (Java)

## Project Overview
SafeLog is a security-focused tool designed for an employee portal to ensure all user passwords adhere to strict corporate safety standards.

## Problem Statement
The goal was to move beyond basic conditional checks and build a modular Password Strength Checker that provides specific feedback to users regarding their password security.

## Security Policy Requirements
To ensure account protection, the validator enforces the following rules:
* **Minimum Length**: Passwords must be at least 8 characters long.
* **Uppercase Requirement**: At least one uppercase letter must be included.
* **Numeric Requirement**: At least one digit (0-9) must be present.

## Technical Implementation
* **Validation Logic**: Uses iterative loops to scan for specific character types, such as digits and uppercase letters.
* **User Feedback System**: Provides clear, descriptive messages like "Missing a digit" or "Too short" to guide the user toward a secure entry.
* **Retry Mechanism**: Employs a persistent loop that continues to prompt the user until a secure password is created.

## Deliverables
* **PasswordValidator.java**: A standalone Java file demonstrating string manipulation and input control.
