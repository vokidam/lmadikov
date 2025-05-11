# Базовый образ Python
FROM python:3.9-slim

# Рабочая директория
WORKDIR /app

# Копируем зависимости
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install -r requirements.txt

# Копируем основной файл
COPY script.py .

# Открываем порт
EXPOSE 8000

# Команда запуска
CMD ["python", "script.py"]
