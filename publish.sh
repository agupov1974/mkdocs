#!/bin/bash
# publish.sh - автоматический деплой

echo "📝 Добавляем изменения..."
git add .

echo "💬 Создаём коммит..."
git commit -m "Обновление документации от $(date '+%Y-%m-%d %H:%M')" || echo "Нет изменений для коммита"

echo "🚀 Отправляем в GitHub..."
git push origin main

echo "✅ Готово! Сайт обновится через 1-2 минуты"
