# Photo Searcher

A Python application that allows users to search for photos using a third-party API (e.g., Unsplash or Pexels) and display or download the results. This project demonstrates object-oriented programming (OOP) principles and integrates API handling with a simple command-line interface.

## Features
- Searches for photos based on user-provided keywords.
- Fetches high-quality images from a public photo API.
- Displays image previews or metadata (e.g., URLs, descriptions).
- Supports downloading selected images to a local directory.

## Project Structure
```
App-Photo-Searcher/
├── photo_searcher/
│   ├── __init__.py
│   ├── api_client.py      # APIClient class for interacting with the photo API
│   ├── photo.py           # Photo class to manage image data
│   ├── downloader.py      # Downloader class for saving images
├── downloads/             # Directory for downloaded images
├── main.py                # Entry point for the application
└── README.md              # Project documentation
```

## Requirements
- Python 3.x
- Required libraries:
  - `requests` (for API calls)

Install dependencies using:
```bash
pip install requests
```

## Setup
1. **Photo API Key**:
   - Sign up for a free API key at a photo service (e.g., [Unsplash](https://unsplash.com/developers) or [Pexels](https://www.pexels.com/api/)).
   - Set the API key as an environment variable:
     ```bash
     export PHOTO_API_KEY='your_api_key_here'
     ```

2. Clone the repository:
   ```bash
   git clone https://github.com/kanhaiya-gupta/Advanced-Python-with-OOP-Projects.git
   cd App-Photo-Searcher
   ```

3. Ensure dependencies are installed (see Requirements).

## Usage
1. Run the application:
   ```bash
   python main.py
   ```

2. Follow the command-line prompts to:
   - Enter a search query (e.g., "sunset", "dogs").
   - View a list of matching photos with details (e.g., URLs or descriptions).
   - Select photos to download (if applicable).

3. Downloaded images will be saved in the `downloads/` directory.

## Example
```
Welcome to Photo Searcher!
Enter search query: sunset
Found 5 photos:
1. Sunset over beach - URL: https://api.example.com/photo1
2. Mountain sunset - URL: https://api.example.com/photo2
...
Enter photo number to download (or 0 to skip): 1
Downloading to downloads/sunset_beach.jpg...
Download complete!
```

## How It Works
- **APIClient Class**: Handles requests to the photo API and retrieves search results.
- **Photo Class**: Stores image data (e.g., URL, description, metadata).
- **Downloader Class**: Manages downloading and saving images to the local filesystem.
- The application orchestrates these components to provide a seamless photo search and download experience.

## Contributing
Contributions are welcome! Please fork the repository, create a new branch, and submit a pull request with your changes.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Author
Kanhaiya Gupta - [GitHub](https://github.com/kanhaiya-gupta)