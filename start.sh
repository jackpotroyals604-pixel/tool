#!/bin/bash
cd "$(dirname "$0")"
echo "======================================================="
echo " 👑 JACKPOT ROYALS EMAIL MARKETING APPLICATION"
echo "======================================================="
# Free port 5051 if already in use
lsof -ti:5051 | xargs kill -9 2>/dev/null || true
python3 app.py

