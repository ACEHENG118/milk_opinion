from django.contrib import admin
from django.urls import path, include
from django.contrib.auth import views as auth_views

urlpatterns = [
    path('admin/', admin.site.urls),

    # 登录/登出 (Django内置)
    path('accounts/login/', auth_views.LoginView.as_view(template_name='registration/login.html'), name='login'),
    path('accounts/logout/',auth_views.LogoutView.as_view(template_name='myapp/logout_done.html'),name='logout'),


    path('', include('dairy_app.urls')),
]
