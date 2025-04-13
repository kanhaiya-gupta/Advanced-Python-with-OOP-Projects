# Calorie Webapp

A Python web application built with Flask to calculate daily calorie needs based on user inputs such as weight, height, age, and activity level. This project demonstrates object-oriented programming (OOP) principles and provides a user-friendly web interface for health-related calculations.

## Features
- Calculates Basal Metabolic Rate (BMR) and daily calorie needs.
- Supports multiple activity levels to adjust calorie estimates.
- Displays results through a clean web interface.
- Simple form-based input for user data.

## Project Structure
```
App-6-Project-Calorie-Webapp/
├── calorie_calculator/
│   ├── __init__.py
│   ├── calorie.py      # Calorie class for BMR and calorie calculations
│   ├── user.py         # User class to store user data
├── static/             # CSS and static assets for the web interface
├── templates/          # HTML templates for the Flask app
├── app.py              # Main Flask application
└── README.md           # Project documentation
```

## Requirements
- Python 3.x
- Required libraries:
  - `flask` (for the web framework)

Install dependencies using:
```bash
pip install flask
```

## Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/kanhaiya-gupta/Advanced-Python-with-OOP-Projects.git
   cd App-6-Project-Calorie-Webapp
   ```

2. Ensure dependencies are installed (see Requirements).

## Usage
1. Run the Flask application:
   ```bash
   python app.py
   ```

2. Open a web browser and navigate to:
   ```
   http://127.0.0.1:5000
   ```

3. Use the web interface to:
   - Enter user details (weight, height, age, gender).
   - Select activity level (e.g., sedentary, active).
   - Submit to calculate daily calorie needs.

4. View the results displayed on the webpage.

## Example
1. Navigate to the homepage.
2. Input:
   - Weight: `70` kg
   - Height: `175` cm
   - Age: `30` years
   - Gender: `Male`
   - Activity Level: `Moderately Active`
3. Submit to see:
   - Estimated daily calorie needs: `~2500 kcal`

## How It Works
- **User Class**: Stores user data (weight, height, age, gender).
- **Calorie Class**: Calculates BMR using the Mifflin-St Jeor equation and adjusts calorie needs based on activity level.
- **Flask App**: Handles HTTP requests, renders templates, and integrates the calorie calculation logic with the web interface.

## Contributing
Contributions are welcome! Please forkcolnames the repository, create a new branch, and submit a pull request with your changes.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Author
Kanhaiya Gupta - [GitHub](https://github.com/kanhaiya-gupta)