# Instant Dictionary Webapp

A Python web application built with Flask that provides instant word definitions, synonyms, and pronunciations using a dictionary API. This project demonstrates object-oriented programming (OOP) principles and offers a user-friendly web interface for quick word lookups.

## Features
- Fetches word definitions, synonyms, and pronunciations from a dictionary API.
- Displays results in a clean, responsive web interface.
- Supports real-time word searches via a simple form.
- Handles invalid inputs and API errors gracefully.

## Project Structure
```
App-8-Instant-Dictionary-Webapp/
├── dictionary/
│   ├── __init__.py
│   ├── dictionary_api.py  # DictionaryAPI class for API interactions
│   ├── word.py            # Word class to store word data
├── static/                # CSS and static assets for the web interface
├── templates/             # HTML templates for the Flask app
├── app.py                 # Main Flask application
└── README.md              # Project documentation
```

## Requirements
- Python 3.x
- Required libraries:
  - `flask` (for the web framework)
  - `requests` (for API calls)

Install dependencies using:
```bash
pip install flask requests
```

## Setup
1. **Dictionary API Key**:
   - Sign up for a free API key at a dictionary service (e.g., [Merriam-Webster](https://dictionaryapi.com/) or [Free Dictionary API](https://dictionaryapi.dev/)).
   - Set the API key as an environment variable:
     ```bash
     export DICTIONARY_API_KEY='your_api_key_here'
     ```

2. Clone the repository:
   ```bash
   git clone https://github.com/kanhaiya-gupta/Advanced-Python-with-OOP-Projects.git
   cd App-8-Instant-Dictionary-Webapp
   ```

3. Ensure dependencies are installed (see Requirements).

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
   - Enter a word in the search form.
   - Submit to view the word’s definition, synonyms, and pronunciation (if available).

## Example
1. Navigate to the homepage.
2. Input:
   - Word: `happy`
3. Submit to see:
   - Definition: Feeling or showing pleasure or contentment.
   - Synonyms: Joyful, cheerful, delighted.
   - Pronunciation: /ˈhapē/

## How It Works
- **Word Class**: Stores word data (definition, synonyms, pronunciation).
- **DictionaryAPI Class**: Handles API requests to fetch word information.
- **Flask App**: Manages HTTP requests, renders templates, and integrates the dictionary logic with the web interface.

## Contributing
Contributions are welcome! Please fork the repository, create a new branch, and submit a pull request with your changes.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Author
Kanhaiya Gupta - [GitHub](https://github.com/kanhaiya-gupta)