# Generated by Django 4.2.17 on 2024-12-23 23:40

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("dairy_app", "0001_initial"),
    ]

    operations = [
        migrations.AlterField(
            model_name="news",
            name="screen_name",
            field=models.CharField(blank=True, max_length=5000),
        ),
    ]
