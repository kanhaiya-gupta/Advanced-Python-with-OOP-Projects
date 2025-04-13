# Flatmates Bill Web App

A Python web application built with Flask to calculate and split bills among flatmates based on the number of days they stayed in a shared accommodation. This project extends the [Flatmates Bill Splitter](https://github.com/kanhaiya-gupta/Advanced-Python-with-OOP-Projects/tree/main/App-2-Flatmates-Bill) by providing a web interface and demonstrates object-oriented programming (OOP) principles.

## Features
- Calculates each flatmate's share of the bill based on days stayed.
- Generates a PDF report summarizing the bill distribution.
- User-friendly web interface for inputting bill details and flatmate information.
- Displays results and provides a downloadable PDF report.

## Project Structure
```
App-5-Flatmates-Bill-Web-App/
├── flatmates_bill/
│   ├── __init__.py
│   ├── bill.py         # Bill class to store bill details
│   ├── flatmate.py     # Flatmate class to manage flatmate details
│   ├── pdf_report.py   # PDF report generation logic
├── static/             # CSS and static assets for the web interface
├── templates/          # HTML templates for the Flask app
├── app.py              # Main Flask application
├── reports/            # Directory for generated PDF reports
└── README.md           # Project documentation
```

## Requirements
- Python 3.x
- Required libraries:
  - `flask` (for the web framework)
  - `fpdf` (for PDF generation)

Install dependencies using:
```bash
pip install flask fpdf
```

## Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/kanhaiya-gupta/Advanced-Python-with-OOP-Projects.git
   cd App-5-Flatmates-Bill-Web-App
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
   - Enter the bill amount and period.
   - Add flatmate names and their days stayed.
   - Submit to calculate the bill split.

4. View the results on the webpage and download the generated PDF report from the `reports/` directory.

## Example
1. Navigate to the homepage.
2. Input:
   - Bill Amount: `120`
   - Period: `March 2023`
   - Flatmate 1: `Alice`, Days Stayed: `20`
   - Flatmate 2: `Bob`, Days Stayed: `10`
3. Submit to see:
   - Alice pays: `$80`
   - Bob pays: `$40`
4. Download the PDF report (`reports/bill_March_2023.pdf`).

## How It Works
- **Bill Class**: Stores the total bill amount and period.
- **Flatmate Class**: Manages flatmate details and calculates their share based on days stayed.
- **PDFReport Class**: Generates a PDF with bill details and individual contributions.
- **Flask App**: Handles HTTP requests, renders templates, and integrates the bill-splitting logic with the web interface.

## Contributing
Contributions are welcome! Please fork the repository, create a new branch, and submit a pull request with your changes.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Author
Kanhaiya Gupta - [GitHub](https://github.com/kanhaiya-gupta)