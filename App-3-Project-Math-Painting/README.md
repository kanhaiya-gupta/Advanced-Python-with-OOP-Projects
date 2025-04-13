# Math Painting

A Python application that creates mathematical art by generating visual patterns using trigonometric functions and the Pygame library. This project demonstrates object-oriented programming (OOP) principles and graphical visualization in Python.

## Features
- Generates dynamic mathematical patterns using sine and cosine functions.
- Displays colorful, animated visualizations in a Pygame window.
- Allows customization of pattern parameters (e.g., scale, speed).
- Simple and interactive graphical interface.

## Project Structure
```
App-3-Project-Math-Painting/
├── math_painting/
│   ├── __init__.py
│   ├── painter.py      # Painter class for generating and rendering patterns
│   ├── settings.py     # Configuration for colors, window size, and parameters
├── main.py             # Entry point for the application
└── README.md           # Project documentation
```

## Requirements
- Python 3.x
- Required libraries:
  - `pygame` (for rendering graphics)
  - `numpy` (for mathematical computations)

Install dependencies using:
```bash
pip install pygame numpy
```

## Usage
1. Clone the repository:
   ```bash
   git clone https://github.com/kanhaiya-gupta/Advanced-Python-with-OOP-Projects.git
   cd App-3-Project-Math-Painting
   ```

2. Run the application:
   ```bash
   python main.py
   ```

3. Observe the animated mathematical patterns in the Pygame window.
   - Press `ESC` or close the window to exit.
   - (Optional) Modify parameters in `settings.py` to experiment with different patterns.

## How It Works
- **Painter Class**: Handles the logic for generating patterns using trigonometric functions and rendering them on the Pygame canvas.
- **Settings Module**: Defines constants for window dimensions, colors, and pattern parameters (e.g., frequency, amplitude).
- The application calculates coordinates based on sine and cosine functions, plotting them as colorful lines or points to create evolving visual art.

## Example
Running `main.py` opens a window displaying a mesmerizing pattern, such as a rotating spiral or wave-like design, with colors shifting over time.

## Contributing
Contributions are welcome! Please fork the repository, create a new branch, and submit a pull request with your changes.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Author
Kanhaiya Gupta - [GitHub](https://github.com/kanhaiya-gupta)