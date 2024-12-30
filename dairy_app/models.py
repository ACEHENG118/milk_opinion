from django.db import models
from django.contrib.auth.models import User

class News(models.Model):
    screen_name = models.TextField(blank=True)
    created_time = models.DateTimeField(null=True, blank=True)
    text = models.TextField()
    url = models.TextField(blank=True, null=True)

    sentiment_score = models.FloatField(default=0)
    keywords = models.CharField(max_length=200, blank=True, null=True)

    def __str__(self):
        return self.screen_name or "News"

class Comment(models.Model):
    screen_name = models.CharField(max_length=200, blank=True)
    location = models.CharField(max_length=200, blank=True)
    created_time = models.CharField(max_length=100, blank=True)
    text = models.TextField()

    sentiment_score = models.FloatField(default=0)
    keywords = models.CharField(max_length=200, blank=True, null=True)

    user = models.ForeignKey(User, on_delete=models.SET_NULL, null=True, blank=True)

    def __str__(self):
        return f"{self.screen_name} - {self.text[:20]}"
