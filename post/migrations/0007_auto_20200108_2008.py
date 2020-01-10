# Generated by Django 3.0.1 on 2020-01-08 14:38

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('post', '0006_noticeproxy'),
    ]

    operations = [
        migrations.AddField(
            model_name='post',
            name='document_file',
            field=models.FileField(blank=True, null=True, upload_to='post/documents/%Y/%m/%d/'),
        ),
        migrations.AddField(
            model_name='post',
            name='parent',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='post.Post'),
        ),
        migrations.AlterField(
            model_name='post',
            name='featured_image',
            field=models.ImageField(blank=True, null=True, upload_to='post/images/%Y/%m/%d/'),
        ),
    ]
