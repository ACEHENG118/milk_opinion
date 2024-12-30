from django.core.management.base import BaseCommand
from django.db import connection
from dairy_app.models import News, Comment
from dairy_app.utils import analyze_sentiment, extract_keywords

class Command(BaseCommand):
    help = "从 news_1、tweets 表中导入数据到 News、Comment"

    def handle(self, *args, **options):
        with connection.cursor() as cursor:
            # 导入 news_1
            cursor.execute("SELECT screen_name, created_time, text, url FROM news_1")
            rows = cursor.fetchall()
            for row in rows:
                screen_name, created_time, text, url = row
                score = analyze_sentiment(text or "")
                kws = extract_keywords(text or "")
                News.objects.create(
                    screen_name=screen_name or "",
                    created_time=created_time,
                    text=text or "",
                    url=url or "",
                    sentiment_score=score,
                    keywords=kws
                )

            # 导入 tweets
            cursor.execute("SELECT screen_name, location, created_time, text FROM tweets")
            rows = cursor.fetchall()
            for row in rows:
                screen_name, location, ctime, text = row
                score = analyze_sentiment(text or "")
                kws = extract_keywords(text or "")
                Comment.objects.create(
                    screen_name=screen_name or "",
                    location=location or "",
                    created_time=ctime or "",
                    text=text or "",
                    sentiment_score=score,
                    keywords=kws
                )

        self.stdout.write(self.style.SUCCESS("数据导入完成"))
