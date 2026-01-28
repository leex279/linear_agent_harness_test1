#!/bin/bash

# Pomodoro Timer App - Development Server Startup Script

echo "Starting Pomodoro Timer App development server..."

# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Change to the project directory
cd "$SCRIPT_DIR"

# Try to start http-server if available
if command -v http-server &> /dev/null; then
    echo "Starting http-server on port 8000..."
    http-server -p 8000 -c-1
# Fall back to Python 3 http.server
elif command -v python3 &> /dev/null; then
    echo "Starting Python 3 HTTP server on port 8000..."
    python3 -m http.server 8000
# Fall back to Python 2 SimpleHTTPServer
elif command -v python &> /dev/null; then
    echo "Starting Python 2 SimpleHTTPServer on port 8000..."
    python -m SimpleHTTPServer 8000
else
    echo "Error: No HTTP server available!"
    echo "Please install http-server (npm install -g http-server) or use Python 3"
    exit 1
fi

echo "Server running at http://localhost:8000"
