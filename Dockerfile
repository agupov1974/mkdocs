FROM python:3.11-slim

WORKDIR /app

# Устанавливаем зависимости
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем исходники
COPY . .

# Открываем порт для MkDocs
EXPOSE 8000

# Команда для запуска в dev режиме
CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]
