# Automated Emails

A Python application that automates sending personalized emails to multiple recipients using a template. This project demonstrates object-oriented programming (OOP) principles and integrates with an email service (e.g., Gmail) to streamline email automation.

## Features
- Reads recipient details from a CSV file.
- Uses a customizable email template for personalization.
- Sends emails via an SMTP server (e.g., Gmail).
- Supports batch email sending with error handling.

## Project Structure
```
App-7-Automated-Emails/
├── email_automation/
│   ├── __init__.py
│   ├── email_sender.py    # EmailSender class for sending emails
│   ├── template.py        # Template class for email content
│   ├── csv_reader.py      # CSVReader class for recipient data
├── data/
│   ├── recipients.csv     # Sample CSV file with recipient details
│   ├── email_template.txt # Sample email template
├── main.py                # Entry point for the application
└── README.md              # Project documentation
```

## Requirements
- Python 3.x
- Required libraries:
  - `smtplib` (included in Python standard library)
  - `email` (included in Python standard library)
  - `pandas` (for CSV processing)

Install dependencies using:
```bash
pip install pandas
```

## Setup
1. **Email Configuration**:
   - Use a Gmail account (or another SMTP-compatible service).
   - Enable "Less Secure Apps" or generate an [App Password](https://support.google.com/accounts/answer/185833) for Gmail.
   - Set your email credentials as environment variables:
     ```bash
     export EMAIL_ADDRESS='your_email@gmail.com'
     export EMAIL_PASSWORD='your_app_password'
     ```

2. Clone the repository:
   ```bash
   git clone https://github.com/kanhaiya-gupta/Advanced-Python-with-OOP-Projects.git
   cd App-7-Automated-Emails
   ```

3. Prepare input files:
   - Update `data/recipients.csv` with recipient details (e.g., name, email, placeholders).
   - Customize `data/email_template.txt` with your email content and placeholders (e.g., `{name}`).

## Usage
1. Run the application:
   ```bash
   python main.py
   ```

2. The application will:
   - Read recipient data from `data/recipients.csv`.
   - Load the email template from `data/email_template.txt`.
   - Send personalized emails to each recipient using the configured email account.

## Example
**recipients.csv**:
```
name,email,role
Alice,alice@example.com,Developer
Bob,bob@example.com,Designer
```

**email_template.txt**:
```
Subject: Welcome, {name}!

Dear {name},
Thank you for your role as a {role}.
Best regards,
Your Team
```

**Output**:
- Alice receives an email with subject "Welcome, Alice!" and body addressing her as a Developer.
- Bob receives a similar email addressing him as a Designer.

## How It Works
- **CSVReader Class**: Reads recipient data from a CSV file.
- **Template Class**: Loads and formats the email template with placeholders.
- **EmailSender Class**: Connects to the SMTP server and sends personalized emails.
- The application combines these components to automate the email-sending process.

## Contributing
Contributions are welcome! Please fork the repository, create a new branch, and submit a pull request with your changes.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Author
Kanhaiya Gupta - [GitHub](https://github.com/kanhaiya-gupta)