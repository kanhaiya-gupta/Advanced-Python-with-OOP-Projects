# Flatmates Bill Splitter

A Python application to calculate and split bills among flatmates based on the number of days they stayed in the shared accommodation during a billing period. This project demonstrates object-oriented programming (OOP) principles and generates a PDF report for the bill distribution.

## Features
- Calculates each flatmate's share of the bill based on their days stayed.
- Generates a PDF report with the bill details and individual contributions.
- Simple command-line interface for user input.

## Project Structure
```
App-2-Flatmates-Bill/
├── flatmates_bill/
│   ├── __init__.py
│   ├── bill.py         # Bill class to store bill details
│   ├── flatmate.py     # Flatmate class to manage flatmate details
│   ├── pdf_report.py   # PDF report generation logic
├── main.py             # Entry point for the application
├── reports/            # Directory for generated PDF reports
└── README.md           # Project documentation
```

## Requirements
- Python 3.x
- Required libraries:
  - `fpdf` (for PDF generation)

Install dependencies using:
```bash
pip install fpdf
```

## Usage
1. Clone the repository:
   ```bash
   git clone https://github.com/kanhaiya-gupta/Advanced-Python-with-OOP-Projects.git
   cd App-2-Flatmates-Bill
   ```

2. Run the application:
   ```bash
   python main.py
   ```

3. Follow the prompts to:
   - Enter the bill amount and period.
   - Provide flatmate names and days stayed.
   
4. A PDF report will be generated in the `reports/` directory with the bill split details.

## Example
```
Enter the bill amount: 120
Enter the bill period (e.g., March 2023): March 2023
Enter the name of flatmate 1: Alice
Enter days stayed by Alice: 20
Enter the name of flatmate 2: Bob
Enter days stayed by Bob: 10

[Output]: PDF report generated at reports/bill_March_2023.pdf
```

## How It Works
- **Bill Class**: Stores the total bill amount and period.
- **Flatmate Class**: Manages flatmate details and calculates their share based on days stayed.
- **PDFReport Class**: Generates a PDF summarizing the bill and individual contributions.
- The bill is split proportionally to the days each flatmate stayed in the house.

## Contributing
Contributions are welcome! Please fork the repository, create a new branch, and submit a pull request with your changes.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Author
Kanhaiya Gupta - [GitHub](https://github.com/kanhaiya-gupta)
