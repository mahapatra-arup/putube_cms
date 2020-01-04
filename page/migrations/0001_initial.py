# Generated by Django 3.0.1 on 2019-12-29 13:07

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Page_Template',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=20, unique=True)),
                ('url', models.CharField(max_length=20, unique=True)),
                ('description', models.CharField(max_length=500)),
                ('is_active', models.BooleanField(default=False)),
            ],
        ),
        migrations.CreateModel(
            name='Menu',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=100)),
                ('toolstrip', models.CharField(max_length=255)),
                ('url', models.URLField(blank=True, max_length=255)),
                ('status', models.BooleanField(default=True)),
                ('lvl', models.IntegerField(blank=True)),
                ('slug', models.SlugField()),
                ('image', models.ImageField(blank=True, null=True, upload_to='menu/')),
                ('view_title', models.CharField(choices=[('Title', 'Title'), ('Image', 'Image'), ('Both', 'Both')], default='Title', max_length=10)),
                ('parent', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='page.Menu')),
            ],
        ),
    ]
