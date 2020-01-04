# Generated by Django 3.0.1 on 2019-12-29 13:05

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=20, unique=True)),
                ('slug', models.CharField(max_length=20, unique=True)),
                ('description', models.CharField(max_length=500)),
                ('is_active', models.BooleanField(default=False)),
                ('meta_description', models.TextField(blank=True, max_length=160, null=True)),
                ('meta_keywords', models.TextField(blank=True, max_length=255, null=True)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'category',
                'verbose_name_plural': 'categories',
                'db_table': 'pt_Category',
                'ordering': ['-id'],
            },
        ),
        migrations.CreateModel(
            name='Gal_Image',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(blank=True, max_length=255, null=True, upload_to='%Y/%m/%d')),
            ],
            options={
                'db_table': 'gal_image',
            },
        ),
        migrations.CreateModel(
            name='Tags',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=20, unique=True)),
                ('slug', models.CharField(max_length=20, unique=True)),
            ],
            options={
                'db_table': 'pt_Tags',
            },
        ),
        migrations.CreateModel(
            name='Term',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=20, unique=True)),
                ('slug', models.CharField(max_length=20, unique=True)),
                ('description', models.CharField(max_length=500)),
                ('is_active', models.BooleanField(default=False)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Term',
                'verbose_name_plural': 'Term',
                'ordering': ['-id'],
            },
        ),
        migrations.CreateModel(
            name='Post',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=100, unique=True)),
                ('slug', models.SlugField(max_length=100, unique=True)),
                ('created_on', models.DateTimeField(auto_now_add=True)),
                ('updated_on', models.DateField(auto_now=True)),
                ('meta_description', models.TextField(blank=True, max_length=160, null=True)),
                ('content', models.TextField()),
                ('status', models.CharField(choices=[('Drafted', 'Drafted'), ('Published', 'Published'), ('Rejected', 'Rejected'), ('Trashed', 'Trashed')], default='Drafted', max_length=10)),
                ('keywords', models.TextField(blank=True, max_length=500)),
                ('featured_image', models.ImageField(blank=True, null=True, upload_to='post/uploads/%Y/%m/%d/')),
                ('category', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='post.Category')),
                ('photos', models.ManyToManyField(blank=True, to='post.Gal_Image')),
                ('tags', models.ManyToManyField(related_name='rel_posts', to='post.Tags')),
                ('term', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='post.Term')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'ordering': ['-updated_on'],
            },
        ),
    ]
