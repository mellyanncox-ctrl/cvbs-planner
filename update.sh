#!/bin/bash
FILE=$(find ~ -name "cvbs-planner-v5.html" 2>/dev/null | head -1)
if [ -z "$FILE" ]; then
  echo "❌ Could not find cvbs-planner-v5.html anywhere on your Mac"
  exit 1
fi
cp "$FILE" /Users/melly_1/Apps/cvbs-planner/index.html
echo "✅ Updated from: $FILE"
cd /Users/melly_1/Apps/cvbs-planner
git add . && git commit -m "Update $(date '+%d %b %Y %H:%M')" && git push
echo "🚀 Pushed to GitHub"
