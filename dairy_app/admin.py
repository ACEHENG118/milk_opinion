from django.contrib import admin
from .models import News, Comment

@admin.register(News)
class NewsAdmin(admin.ModelAdmin):
    list_display = ('id','screen_name','created_time','sentiment_score','keywords')
    search_fields = ('screen_name','text','keywords')

@admin.register(Comment)
class CommentAdmin(admin.ModelAdmin):
    list_display = ('id','screen_name','location','sentiment_score','keywords')
    search_fields = ('screen_name','text','keywords')
