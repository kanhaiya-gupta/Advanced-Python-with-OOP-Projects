# Webcam Photo Sharer

A Python application that captures photos using a webcam, uploads them to a cloud storage service, and generates a shareable link. This project demonstrates object-oriented programming (OOP) principles, webcam integration, and cloud storage interaction.

## Features
- Captures photos via webcam using OpenCV.
- Uploads captured photos to a cloud storage service (e.g., Dropbox).
- Generates a shareable link for the uploaded photo.
- Simple command-line interface for user interaction.

## Project Structure
```
App-4-Webcam-Photo-Sharer/
├── webcam_photo_sharer/
│   ├── __init__.py
│   ├── camera.py       # Camera class for capturing photos
│   ├── uploader.py     # Uploader class for cloud storage interaction
│   ├── sharer.py       # Sharer class for generating shareable links
├── main.py             # Entry point for the application
├── photos/             # Directory for temporarily storing captured photos
└── README.md           # Project documentation
```

## Requirements
- Python 3.x
- Required libraries:
  - `opencv-python` (for webcam capture)
  - `dropbox` (for cloud storage integration)

Install dependencies using:
```bash
pip install opencv-python dropbox
```

## Setup
1. **Dropbox API Key**:
   - Create a Dropbox app in the [Dropbox Developer Console](https://www.dropbox.com/developers).
   - Generate an access token for your app.
   - Set the access token as an environment variable:
     ```bash
     export DROPBOX_ACCESS_TOKEN='your_access_token_here'
     ```

2. Clone the repository:
   ```bash
   git clone https://github.com/kanhaiya-gupta/Advanced-Python-with-OOP-Projects.git
   cd App-4-Webcam-Photo-Sharer
   ```

## Usage
1. Run the application:
   ```bash
   python main.py
   ```

2. Follow the prompts to:
   - Capture a photo using your webcam (press a key, e.g., `SPACE`, to take the photo).
   - Confirm the upload to Dropbox.

3. The application will:
   - Save the photo temporarily in the `photos/` directory.
   - Upload the photo to Dropbox.
   - Output a shareable link for the uploaded photo.

## Example
```
Press SPACE to capture a photo...
[Photo captured]
Uploading to Dropbox...
Shareable link: https://www.dropbox.com/s/abc123xyz/photo.jpg
```

## How It Works
- **Camera Class**: Interfaces with the webcam using OpenCV to capture photos.
- **Uploader Class**: Handles file uploads to Dropbox using the Dropbox API.
- **Sharer Class**: Generates a publicly accessible link for the uploaded photo.
- The application orchestrates these components to provide a seamless photo-sharing experience.

## Contributing
Contributions are welcome! Please fork the repository, create a new branch, and submit a pull request with your changes.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Author
Kanhaiya Gupta - [GitHub](https://github.com/kanhaiya-gupta)