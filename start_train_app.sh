#!/data/data/com.termux/files/usr/bin/sh
cd "$(dirname "$0")/dist"
python3 -m http.server 8091 &
sleep 1
am start -a android.intent.action.VIEW -d "http://localhost:8091/index.html"
