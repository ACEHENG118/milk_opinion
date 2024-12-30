from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),

    # 新闻管理
    path('news/', views.news_list, name='news_list'),
    path('news/create/', views.news_create, name='news_create'),
    path('news/edit/<int:news_id>/', views.news_edit, name='news_edit'),
    path('news/delete/<int:news_id>/', views.news_delete, name='news_delete'),

    # 评论管理
    path('comments/', views.comment_list, name='comment_list'),
    path('comments/create/', views.comment_create, name='comment_create'),
    path('comments/edit/<int:comment_id>/', views.comment_edit, name='comment_edit'),
    path('comments/delete/<int:comment_id>/', views.comment_delete, name='comment_delete'),

    # 评论分析
    path('analysis/', views.comment_analysis, name='comment_analysis'),

    # 个人信息 & 修改密码 & 用户管理
    path('personal_info/', views.personal_info, name='personal_info'),
    path('change_password/', views.change_password, name='change_password'),
    path('user_manage/', views.user_manage, name='user_manage'),

    # 用户注册 (新增)
    path('register/', views.register, name='register'),
]
