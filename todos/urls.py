from django.urls import path
from .views import TodoListCreate, TodoDetail

urlpatterns = [
    path("", TodoListCreate.as_view(), name="todo_list_create"),
    path("<int:pk>/", TodoDetail.as_view(), name="todo_detail"),
]
