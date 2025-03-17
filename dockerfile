FROM python:3.12-slim

WORKDIR /app

COPY pyproject.toml poetry.lock ./

RUN pip install poetry

RUN poetry install --no-dev

COPY . .

EXPOSE 8000

CMD ["poetry", "run", "sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
