# Advanced-Python-with-OOP-Projects

### General Principles for Organizing Code
1. **Modularize with OOP**: Break your code into classes and modules based on functionality (e.g., separate logic for calculations, UI, and data handling).
2. **Follow a Consistent Structure**: Use a standard directory layout for each project to make navigation intuitive.
3. **Name Files Clearly**: Use descriptive, lowercase names with underscores (e.g., `bill_calculator.py`, `webcam_sharer.py`).
4. **Leverage Git**: Track changes and keep your projects version-controlled.
5. **Document Your Code**: Add docstrings and comments to explain what each part does.
6. **Separate Concerns**: Keep business logic, user interface, and data handling in distinct files or classes.

---

### Suggested Project Structure
Here’s a reusable structure for organizing each of your applications (e.g., `App-2-Flatmates-Bill` or `App-10-Cinema-Ticket-Booking`). Adapt it based on the project’s complexity.

```
project_name/
├── src/                    # Source code directory
│   ├── __init__.py        # Makes src a package
│   ├── main.py            # Entry point to run the app
│   ├── models.py          # Classes for data (e.g., Bill, Flatmate, Ticket)
│   ├── utils.py           # Helper functions (e.g., calculations, file I/O)
│   └── ui.py              # User interface (CLI, GUI, or web-related code)
├── tests/                 # Unit tests for your code
│   ├── __init__.py
│   └── test_models.py     # Test cases for models.py
├── data/                  # Static files or data (e.g., JSON, CSVs)
│   └── sample_data.json
├── docs/                  # Documentation
│   └── README.md          # Project-specific instructions
├── requirements.txt       # List of Python dependencies
└── .gitignore             # Ignore unnecessary files (e.g., __pycache__, .idea/)
```

#### Example: Organizing `App-2-Flatmates-Bill`
```
App-2-Flatmates-Bill/
├── src/
│   ├── __init__.py
│   ├── main.py            # Runs the app and ties everything together
│   ├── models.py          # Flatmate and Bill classes
│   ├── utils.py           # Bill splitting logic
│   └── ui.py              # CLI to input flatmate details and display results
├── tests/
│   ├── test_models.py     # Tests for Flatmate and Bill classes
├── data/
│   └── sample_bills.json  # Example bill data (optional)
├── requirements.txt       # e.g., "pypdf2" if used
└── README.md              # How to run and what it does
```

---

### Step-by-Step Guide to Organize Your Code
1. **Start with a Template**:
   - Create the structure above for each project using PyCharm or manually.
   - Use PyCharm’s “New Project” feature to set up a clean environment.

2. **Break Down Existing Code**:
   - If you’ve already written code (e.g., for `Geometry_Game`), refactor it:
     - Move class definitions (e.g., `Point`, `Shape`) to `models.py`.
     - Move helper functions (e.g., distance calculations) to `utils.py`.
     - Keep the main execution flow in `main.py`.

3. **Use OOP Effectively**:
   - Example for `Flatmates' Bill`:
     ```python
     # src/models.py
     class Flatmate:
         def __init__(self, name, days_stayed):
             self.name = name
             self.days_stayed = days_stayed

         def pays(self, bill, other_flatmate):
             weight = self.days_stayed / (self.days_stayed + other_flatmate.days_stayed)
             return weight * bill.amount

     class Bill:
         def __init__(self, amount, period):
             self.amount = amount
             self.period = period
     ```
     ```python
     # src/main.py
     from models import Flatmate, Bill
     from ui import get_flatmate_details, display_results

     def run():
         bill = Bill(amount=120, period="April 2025")
         flatmate1, flatmate2 = get_flatmate_details()
         amount1 = flatmate1.pays(bill, flatmate2)
         amount2 = flatmate2.pays(bill, flatmate1)
         display_results(flatmate1, amount1, flatmate2, amount2)

     if __name__ == "__main__":
         run()
     ```

4. **Add a `requirements.txt`**:
   - List dependencies (e.g., `flask` for web apps, `requests` for APIs):
     ```
     flask==2.3.2
     requests==2.28.1
     ```

5. **Initialize Git**:
   - In each project folder:
     ```bash
     git init
     git add .
     git commit -m "Initial project structure"
     ```
   - Push to your GitHub repo (e.g., `pythonprocourse/App-2-Flatmates-Bill`).

6. **Test Your Code**:
   - Write simple tests in `tests/test_models.py`:
     ```python
     from src.models import Flatmate, Bill

     def test_flatmate_pays():
         f1 = Flatmate("Alice", 20)
         f2 = Flatmate("Bob", 10)
         bill = Bill(120, "April 2025")
         assert f1.pays(bill, f2) == 80  # 2/3 of 120
     ```
   - Run with `pytest` (add `pytest` to `requirements.txt`).

7. **Document Each Project**:
   - Update `README.md` in each folder:
     ```
     # Flatmates' Bill
     A Python app to split bills among flatmates based on days stayed.

     ## How to Run
     1. Install dependencies: `pip install -r requirements.txt`
     2. Run: `python src/main.py`
     ```

---

### Tips for Specific Projects
- **Geometry Game**: Separate game logic (`models.py`) from display (`ui.py`).
- **Flatmates' Bill Web App**: Add a `routes.py` for Flask routes and a `templates/` folder for HTML.
- **Cinema Booking App**: Use `data/` for a simple database (e.g., `cinema_seats.json`).
- **Instant Dictionary API**: Keep API logic in `api.py` and use `flask` or `fastapi`.

---

### Tools to Help You
- **PyCharm**: Use its refactoring tools (right-click > Refactor) to move code into modules.
- **Git**: Commit changes often with meaningful messages (e.g., `git commit -m "Refactored bill splitting into utils.py"`).
- **Black or Flake8**: Format and lint your code for consistency (install via `pip`).

---

### Next Steps
Pick one project (e.g., `App-2-Flatmates-Bill`) and apply this structure. Once you’re comfortable, replicate it across your other apps. If you’d like, share a snippet of your current code, and I can help you refactor it into this organized format!

How does this sound? Ready to get started?
