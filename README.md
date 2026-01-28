# Pomodoro Timer App

A simple, elegant Pomodoro Timer application built with vanilla JavaScript and HTML/CSS.

## Overview

This project implements a Pomodoro Timer with the following 5 key features:

1. **Timer Display** - Clear countdown timer showing minutes and seconds remaining
2. **Start/Pause Controls** - Ability to start, pause, and resume the timer
3. **Work and Break Sessions** - Automatically alternates between work (25 minutes) and break (5 minutes) sessions
4. **Progress Indicator** - Visual feedback showing session progress and type (Work/Break)
5. **Audio Notifications** - Sound alerts when sessions complete

## Project Structure

```
my-app4/
├── index.html          # Main HTML structure
├── styles.css          # Application styling
├── app.js              # Core application logic
├── init.sh             # Dev server startup script
├── README.md           # This file
└── .gitignore          # Git ignore rules
```

## Getting Started

### Prerequisites

- Node.js (for http-server) or Python 3 (for built-in server)
- A modern web browser

### Running the Application

Start the development server:

```bash
./init.sh
```

The application will be available at `http://localhost:8000`

## How to Use

1. Click the "Start" button to begin a 25-minute work session
2. The timer will count down and display remaining time
3. When the work session completes, an audio alert will play
4. A 5-minute break session automatically starts
5. Use "Pause" to temporarily stop the timer, and "Resume" to continue

## Development

To modify the timer durations, edit the configuration in `app.js`:

```javascript
const CONFIG = {
  workDuration: 25 * 60,    // 25 minutes in seconds
  breakDuration: 5 * 60,    // 5 minutes in seconds
};
```

## Tech Stack

- **Frontend:** Vanilla JavaScript, HTML5, CSS3
- **Tooling:** Simple HTTP server for development

## License

MIT License

## Contact

For questions or issues, please refer to the Linear project tracking.
