# Generated by Django 3.0.1 on 2020-03-18 15:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('shop', '0002_auto_20200316_1649'),
    ]

    operations = [
        migrations.AddField(
            model_name='item_category',
            name='is_active',
            field=models.BooleanField(default=True),
        ),
    ]