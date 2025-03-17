# 使用 Python 3.12-slim 作為基礎映像
FROM python:3.12-slim

# 設定工作目錄
WORKDIR /app

# 安裝 Poetry
RUN curl -sSL https://install.python-poetry.org | python3 -

# 將 Poetry 安裝目錄添加到 PATH 環境變數中
ENV PATH="/root/.local/bin:$PATH"

# 複製 pyproject.toml 和 poetry.lock 文件
COPY pyproject.toml poetry.lock ./

# 安裝項目的依賴
RUN poetry install --no-dev

# 複製所有源代碼
COPY . .

# 創建一個非 root 用戶來運行應用（可選，增加安全性）
RUN adduser --disabled-password --gecos '' myuser
USER myuser

# 開放 8000 端口
EXPOSE 8000

# 設定啟動命令，先執行資料庫遷移，再啟動 Django 伺服器
CMD ["sh", "-c", "python manage.py migrate && poetry run python manage.py runserver 0.0.0.0:8000"]
