.PHONY: help serve build clean deploy shell

help:
	@echo "📚 Доступные команды:"
	@echo "  make serve   - Запустить сервер разработки"
	@echo "  make build   - Собрать статический сайт"
	@echo "  make clean   - Очистить артефакты сборки"
	@echo "  make shell   - Запустить shell в контейнере"
	@echo "  make deploy  - Собрать сайт для деплоя"

serve:
	docker-compose up
	@echo "🌐 Откройте: http://localhost:8001"

build:
	docker-compose run --rm mkdocs mkdocs build --clean

clean:
	rm -rf site/
	docker-compose down -v

shell:
	docker-compose run --rm mkdocs /bin/bash

deploy: clean build
	@echo "✅ Сайт собран в папке site/"
	@echo "🚀 Отправьте изменения в main ветку для автоматического деплоя"
