#!/bin/bash
# 一鍵把 justplay_game_qa 資料夾推到 GitHub
# 用法：cd justplay_game_qa && bash push.sh
# 前提：Mac 上已裝 git；已在 GitHub 建好空的 justplay_game_qa repo

set -e

REPO_URL="https://github.com/aliceliao-hihealth/justplay_game_qa.git"
COMMIT_MSG="${1:-Sprint 12 QA report}"

cd "$(dirname "$0")"

echo "🔍 檢查 git repo 狀態..."
if [ ! -d ".git" ]; then
  echo "📦 初始化 git repo (main branch)..."
  git init -b main
  git remote add origin "$REPO_URL"
else
  echo "✅ 已是 git repo"
  # 確保 remote 存在且正確
  if ! git remote get-url origin >/dev/null 2>&1; then
    git remote add origin "$REPO_URL"
  fi
fi

echo "📝 加入變更..."
git add .

if git diff --cached --quiet; then
  echo "⚠️  沒有變更可 commit，跳過"
else
  git commit -m "$COMMIT_MSG"
fi

echo "🚀 Push 到 GitHub..."
echo "   (若第一次跑會跳出 GitHub 認證，用瀏覽器登入即可)"
git push -u origin main

echo ""
echo "✅ 完成！開啟 https://github.com/aliceliao-hihealth/justplay_game_qa"
