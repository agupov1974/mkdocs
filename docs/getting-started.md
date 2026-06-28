# Начало работы

## Быстрый старт

Для работы с документацией выполните:

```bash
make serve
```

##Структура проекта

```text
.
├── docs/              # Исходники документации
├── .github/           # GitHub Actions
├── Dockerfile         # Docker конфигурация
├── docker-compose.yml # Docker Compose
├── mkdocs.yml         # Конфигурация MkDocs
└── Makefile          # Утилиты
```

##Полезные команды

Команда	Описание
- `make serve`	- Запустить сервер
- `make build`	- Собрать сайт
- `make clean`	- Очистить сборку

### Файл `docs/api.md`

# API Reference

## Основные функции

### Функция example()

Описание функции.

**Параметры:**
- `param1` (str) - Первый параметр
- `param2` (int) - Второй параметр

**Возвращает:**
- `bool` - Результат операции

**Пример:**
```python
def example(param1, param2):
    return param1 == str(param2)
```