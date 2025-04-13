# Instant Dictionary API

A Python-based RESTful API built with Flask that provides word definitions, synonyms, and pronunciations by integrating with a dictionary service. This project demonstrates object-oriented programming (OOP) principles and serves as a backend for dictionary-related applications.

## Features
- Provides endpoints to fetch word definitions, synonyms, and pronunciations.
- Integrates with a third-party dictionary API (e.g., Merriam-Webster or Free Dictionary API).
- Returns responses in JSON format.
- Handles errors for invalid words or API failures.

## Project Structure
```
App-9-Instant-Dictionary-API/
├── dictionary/
│   ├── __init__.py
│   ├── dictionary_api.py  # DictionaryAPI class for external API interactions
│   ├── word.py            # Word class to manage word data
├── app.py                 # Main Flask application for API routes
├── tests/                 # Directory for unit tests (if applicable)
└── README.md              # Project documentation
```

## Requirements
- Python 3.x
- Required libraries:
  - `flask` (for the API framework)
  - `requests` (for external API calls)

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
   cd App-9-Instant-Dictionary-API
   ```

3. Ensure dependencies are installed (see Requirements).

## Usage
1. Run the Flask application:
   ```bash
   python app.py
   ```

2. The API will be available at:
   ```
   http://127.0.0.1:5000
   ```

3. Use the following endpoints:
   - **GET `/word/<word>`**: Fetch details for a specific word.
     - Example: `http://127.0.0.1:5000/word/happy`
     - Response:
       ```json
       {
         "word": "happy",
         "definition": "Feeling or showing pleasure or contentment",
         "synonyms": ["joyful", "cheerful", "delighted"],
         "pronunciation": "/ˈhapē/"
       }
       ```
   - **GET `/health`**: Check API status.
     - Response: `{"status": "healthy"}`

## Example
Send a GET request using `curl` or a tool like Postman:
```bash
curl http://127.0.0.1:5000/word/happy
```

Response:
```json
{
  "word": "happy",
  "definition": "Feeling or showing pleasure or contentment",
  "synonyms": ["joyful", "cheerful", "delighted"],
  "pronunciation": "/ˈhapē/"
}
```

## How It Works
- **Word Class**: Encapsulates word data (definition, synonyms, pronunciation).
- **DictionaryAPI Class**: Manages requests to the external dictionary service.
- **Flask App**: Defines API routes and handles JSON responses, integrating the dictionary logic.

## Testing
- Unit tests (if included) are located in the `tests/` directory.
- Run tests with:
  ```bash
  python -m unittest discover tests
  ```

## Contributing
Contributions are welcome! Please fork the repository, create a new branch, and submit a pull request with your changes.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Author
Kanhaiya Gupta - [GitHub](https://github.com/kanhaiya-gupta)