#!/bin/bash
# Сборка статики в папку site
echo "🔨 Начинаем сборку сайта..."
docker run --rm -v $(pwd):/app mkdocs mkdocs build --clean
echo "✅ Сайт собран в папке site/"
