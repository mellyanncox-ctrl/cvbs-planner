#!/bin/bash
cd /Users/melly_1/Apps/cvbs-planner

# Kill anything already on port 3000
lsof -ti:3000 | xargs kill -9 2>/dev/null

# Start server and keep it running
npx serve . -p 3000 &
SERVER_PID=$!

# Wait for server to start
sleep 3

# Open in Chrome
open -a "Google Chrome" http://localhost:3000

# Keep script alive so server keeps running
wait $SERVER_PID
