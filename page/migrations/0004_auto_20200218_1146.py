# Generated by Django 3.0.1 on 2020-02-18 06:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('page', '0003_auto_20200214_1121'),
    ]

    operations = [
        migrations.AlterField(
            model_name='menu',
            name='toolstrip',
            field=models.CharField(blank=True, max_length=255),
        ),
    ]
