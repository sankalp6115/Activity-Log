#!/bin/bash
REPO_DIR="$HOME/activity-log"
cd "$REPO_DIR" || exit

echo "Update: $(date)" >> log.txt

git add log.txt
git commit -m "chore: daily activity update $(date '+%Y-%m-%d %H:%M:%S')"
git push origin main