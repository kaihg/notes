#!/bin/bash
# 將 Personal_Note 中的指定資料夾同步到 Quartz content/
# 用法：./sync.sh

PERSONAL_NOTE="../Personal_Note"
CONTENT="./content"

echo "同步 2026 家族旅遊..."
rsync -av --delete --include="*/" --include="*.md" --exclude="*" \
  "$PERSONAL_NOTE/1_Project/2026 家族旅遊/" \
  "$CONTENT/2026家族旅遊/"

echo "同步完成。"
echo ""
echo "若要發佈，請執行："
echo "  cd /Users/kk/projects/quartz-notes"
echo "  git add -A && git commit -m 'update: sync notes' && git push"
