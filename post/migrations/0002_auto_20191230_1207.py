# Generated by Django 3.0.1 on 2019-12-30 06:37

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('post', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='post',
            name='photos',
        ),
        migrations.DeleteModel(
            name='Gal_Image',
        ),
    ]
