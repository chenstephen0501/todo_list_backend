FROM python:3.12-slim

WORKDIR /app

# 安裝 Poetry 並避免建立虛擬環境
RUN pip install --no-cache-dir poetry && poetry config virtualenvs.create false

# 複製依賴管理檔案
COPY pyproject.toml poetry.lock ./

# 安裝專案依賴 (不包含 dev 依賴)
RUN poetry install --without dev

# 複製專案所有檔案
COPY . .

# 開放 8000 端口
EXPOSE 8000

# 執行 Django 遷移和啟動伺服器
CMD exec poetry run sh -c "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"
