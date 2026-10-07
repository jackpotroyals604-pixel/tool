#!/bin/bash
cd "$(dirname "$0")"
# Free port 5051 if already in use
lsof -ti:5051 | xargs kill -9 2>/dev/null || true
echo "======================================================="
echo " 👑 JACKPOT ROYALS EMAIL MARKETING APPLICATION"
echo "======================================================="
echo "Opening Dashboard in your browser..."
python3 -c "import time, webbrowser; time.sleep(1); webbrowser.open('http://127.0.0.1:5051')" &
python3 app.py

