cd "$(dirname "$0")" || exit
echo "Update: $(date)" >> log.txt

git add log.txt commit.sh

if ! git diff --cached --quiet; then
  git commit -m "chore: daily update $(date '+%Y-%m-%d %H:%M:%S')"
  git push origin main
fi