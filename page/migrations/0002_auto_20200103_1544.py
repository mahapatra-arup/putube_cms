# Generated by Django 3.0.1 on 2020-01-03 10:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('page', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='menu',
            name='url',
            field=models.CharField(blank=True, max_length=255),
        ),
    ]
