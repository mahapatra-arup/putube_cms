# Generated by Django 3.0.1 on 2020-01-27 10:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('staff', '0003_auto_20200127_1232'),
    ]

    operations = [
        migrations.AddField(
            model_name='staff',
            name='address',
            field=models.TextField(blank=True, max_length=500),
        ),
    ]