# Django Todo List

這是一個使用 Django 和 Django REST Framework 的 Todo List 後端專案，提供 API 供前端 Vue 應用。

![todolist首頁](/public/image/todolist.jpg)
[專案演示影片](https://youtu.be/ywlRd4iCQX0)

## 前端專案連結
[前端專案連結](https://github.com/chenstephen0501/todo_list_front_end)


## 專案功能

- **CRUD 操作**：使用 Django REST Framework 提供的 API 進行 Todo 項目的新增、修改、刪除與查詢操作以及使用者 註冊、登入、登出的操作。
- **JWT 驗證**：集成 JWT（JSON Web Token）實現用戶的註冊、登入、登出功能，確保 API 的安全性。
- **CORS 支援**：使用 `django-cors-headers` 處理跨域請求，允許前端應用安全地訪問後端 API。


## 系統需求

### Python 環境與套件

- python 3.12
- django 5.1
- djangorestframework 3.15.2
- djangorestframework-simplejwt 5.3.1
- python-dotenv 1.0.1
- gunicorn 23.0.0
- django-cors-headers 4.4.0

## 安裝與設定

### 1. 克隆專案，將專案克隆至本地
```bash
$ git clone git@github.com:chenstephen0501/todo_list_backend.git
$ cd todo_list_backend
```

### 2. 虛擬環境初始化

```bash
$ pip install poetry
```

### 3. 進入虛擬環境
```bash
$ poetry shell
$ poetry install
```

### 3. 設定環境變數

- DEBUG=False
- SECRET_KEY=your_secret_key

### 4. 啓動專案
```bash
$ python manage.py runserver
```
