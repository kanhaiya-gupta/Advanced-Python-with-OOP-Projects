# Advanced Python with OOP Projects

A collection of Python projects designed to demonstrate advanced object-oriented programming (OOP) principles. Each project showcases practical applications, ranging from command-line tools to web applications, APIs, and image processing, leveraging Python's capabilities and various libraries. This repository is ideal for learners and developers looking to explore OOP concepts through real-world examples.

## Projects Overview

This repository contains the following 10 projects, each in its own subdirectory with dedicated functionality:

1. **[Flatmates Bill Splitter](https://github.com/kanhaiya-gupta/Advanced-Python-with-OOP-Projects/tree/main/App-2-Flatmates-Bill)**  
   A command-line application to split bills among flatmates based on days stayed, generating a PDF report.  
   - **Key Features**: Bill splitting, PDF generation.  
   - **Technologies**: Python, `fpdf`.

2. **[Math Painting](https://github.com/kanhaiya-gupta/Advanced-Python-with-OOP-Projects/tree/main/App-3-Project-Math-Painting)**  
   A graphical application that creates animated mathematical art using trigonometric functions and Pygame.  
   - **Key Features**: Dynamic patterns, real-time visualization.  
   - **Technologies**: Python, `pygame`, `numpy`.

3. **[Webcam Photo Sharer](https://github.com/kanhaiya-gupta/Advanced-Python-with-OOP-Projects/tree/main/App-4-Webcam-Photo-Sharer)**  
   An application to capture webcam photos, upload them to Dropbox, and generate shareable links.  
   - **Key Features**: Webcam capture, cloud storage integration.  
   - **Technologies**: Python, `opencv-python`, `dropbox`.

4. **[Flatmates Bill Web App](https://github.com/kanhaiya-gupta/Advanced-Python-with-OOP-Projects/tree/main/App-5-Flatmates-Bill-Web-App)**  
   A Flask-based web version of the Flatmates Bill Splitter with a user-friendly interface and PDF reports.  
   - **Key Features**: Web interface, bill splitting, PDF download.  
   - **Technologies**: Python, `flask`, `fpdf`.

5. **[Calorie Webapp](https://github.com/kanhaiya-gupta/Advanced-Python-with-OOP-Projects/tree/main/App-6-Project-Calorie-Webapp)**  
   A Flask web app to calculate daily calorie needs based on user inputs like weight, height, and activity level.  
   - **Key Features**: BMR calculation, web form.  
   - **Technologies**: Python, `flask`.

6. **[Automated Emails](https://github.com/kanhaiya-gupta/Advanced-Python-with-OOP-Projects/tree/main/App-7-Automated-Emails)**  
   An application to send personalized emails to multiple recipients using a template and CSV data.  
   - **Key Features**: Email automation, template personalization.  
   - **Technologies**: Python, `smtplib`, `pandas`.

7. **[Instant Dictionary Webapp](https://github.com/kanhaiya-gupta/Advanced-Python-with-OOP-Projects/tree/main/App-8-Instant-Dictionary-Webapp)**  
   A Flask web app for instant word lookups, providing definitions, synonyms, and pronunciations.  
   - **Key Features**: Dictionary API integration, responsive UI.  
   - **Technologies**: Python, `flask`, `requests`.

8. **[Instant Dictionary API](https://github.com/kanhaiya-gupta/Advanced-Python-with-OOP-Projects/tree/main/App-9-Instant-Dictionary-API)**  
   A RESTful API for fetching word definitions, synonyms, and pronunciations, built with Flask.  
   - **Key Features**: JSON responses, API endpoints.  
   - **Technologies**: Python, `flask`, `requests`.

9. **[Cinema Ticket Booking](https://github.com/kanhaiya-gupta/Advanced-Python-with-OOP-Projects/tree/main/App-10-Cinema-Ticket-Booking)**  
   A command-line application for booking cinema tickets, managing showtimes, and generating confirmations.  
   - **Key Features**: Movie selection, seat management.  
   - **Technologies**: Python (standard library).

10. **[Photo Searcher](https://github.com/kanhaiya-gupta/Advanced-Python-with-OOP-Projects/tree/main/App-1-Photo-Searcher)**  
    A command-line application to search for photos using a public API (e.g., Unsplash) and download selected images.  
    - **Key Features**: Photo search, image downloading.  
    - **Technologies**: Python, `requests`.

## Prerequisites
- Python 3.x
- A virtual environment is recommended for dependency management:
  ```bash
  python -m venv venv
  source venv/bin/activate  # On Windows: venv\Scripts\activate
  ```

## General Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/kanhaiya-gupta/Advanced-Python-with-OOP-Projects.git
   cd Advanced-Python-with-OOP-Projects
   ```

2. Navigate to the desired project directory (e.g., `App-2-Flatmates-Bill`).

3. Install project-specific dependencies as listed in each project's directory. For example:
   ```bash
   pip install -r requirements.txt  # If a requirements.txt exists
   ```
   Or install manually based on the project's README (e.g., `pip install flask requests`).

4. Follow the project-specific instructions in its subdirectory for setup, configuration, and usage.

## Usage
Each project has its own entry point (typically `main.py` or `app.py`) and usage instructions. For example:
- For command-line apps (e.g., Flatmates Bill Splitter, Automated Emails, Cinema Ticket Booking, Photo Searcher), run:
  ```bash
  python main.py
  ```
- For web apps or APIs (e.g., Flatmates Bill Web App, Calorie Webapp, Instant Dictionary Webapp, Instant Dictionary API), run:
  ```bash
  python app.py
  ```
  Then access at `http://127.0.0.1:5000` in a browser or API client.

Refer to individual project directories for detailed instructions, including any API keys or environment variables required (e.g., Dropbox, Unsplash, or Dictionary API keys).

## Project-Specific Notes
- Some projects (e.g., Webcam Photo Sharer, Automated Emails, Instant Dictionary Webapp, Instant Dictionary API, Photo Searcher) require external API keys or email credentials. Set these as environment variables or configure as instructed in the respective project folder.
- Web-based projects (Flatmates Bill Web App, Calorie Webapp, Instant Dictionary Webapp, Instant Dictionary API) use Flask and run locally by default.
- Ensure your system has a webcam for Webcam Photo Sharer and a compatible SMTP service (e.g., Gmail) for Automated Emails.

## Contributing
Contributions are welcome! To contribute:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -m "Add your feature"`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Open a pull request.

Please ensure your code follows PEP 8 guidelines and includes appropriate documentation.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Author
Kanhaiya Gupta - [GitHub](https://github.com/kanhaiya-gupta)

## Acknowledgments
- Built as a learning resource for advanced Python and OOP concepts.
- Thanks to the open-source community for libraries like Flask, Pygame, OpenCV, and Requests.