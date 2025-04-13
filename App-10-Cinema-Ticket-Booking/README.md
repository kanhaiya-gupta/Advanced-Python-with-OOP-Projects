# Cinema Ticket Booking

A Python application for booking cinema tickets, managing movie showtimes, and generating booking confirmations. This project demonstrates object-oriented programming (OOP) principles and provides a simple command-line interface for cinema ticket management.

## Features
- Displays available movies and showtimes.
- Allows users to book tickets by selecting a movie, showtime, and number of seats.
- Generates a booking confirmation with details.
- Manages seat availability and validates user inputs.

## Project Structure
```
App-10-Cinema-Ticket-Booking/
├── cinema/
│   ├── __init__.py
│   ├── movie.py           # Movie class for movie details
│   ├── showtime.py        # Showtime class for scheduling
│   ├── booking.py         # Booking class for ticket reservations
│   ├── cinema.py          # Cinema class to manage movies and showtimes
├── data/
│   ├── movies.json        # Sample movie data
│   ├── showtimes.json     # Sample showtime data
├── main.py                # Entry point for the application
└── README.md              # Project documentation
```

## Requirements
- Python 3.x
- No external libraries required (uses standard library only).

## Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/kanhaiya-gupta/Advanced-Python-with-OOP-Projects.git
   cd App-10-Cinema-Ticket-Booking
   ```

2. Ensure Python 3.x is installed.

3. (Optional) Modify `data/movies.json` and `data/showtimes.json` to customize movie listings and schedules.

## Usage
1. Run the application:
   ```bash
   python main.py
   ```

2. Follow the command-line prompts to:
   - View available movies and showtimes.
   - Select a movie and showtime.
   - Specify the number of tickets.
   - Confirm the booking.

3. Receive a booking confirmation with details (e.g., movie, time, seats).

## Example
```
Welcome to Cinema Ticket Booking!
Available Movies:
1. The Matrix - Action, 120 min
2. Inception - Sci-Fi, 148 min

Select a movie (1-2): 1
Available Showtimes:
1. 2025-04-14, 18:00, 50 seats
2. 2025-04-14, 21:00, 30 seats

Select a showtime (1-2): 1
Enter number of tickets: 2

Booking confirmed!
Movie: The Matrix
Showtime: 2025-04-14, 18:00
Seats: 2
Total Cost: $20
```

## How It Works
- **Movie Class**: Stores movie details (title, genre, duration).
- **Showtime Class**: Manages showtime schedules and seat availability.
- **Booking Class**: Handles ticket reservations and confirmation generation.
- **Cinema Class**: Coordinates movies, showtimes, and bookings.
- The application uses JSON files for data storage and provides a simple CLI for interaction.

## Contributing
Contributions are welcome! Please fork the repository, create a new branch, and submit a pull request with your changes.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Author
Kanhaiya Gupta - [GitHub](https://github.com/kanhaiya-gupta)