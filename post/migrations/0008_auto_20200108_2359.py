# Generated by Django 3.0.1 on 2020-01-08 18:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('post', '0007_auto_20200108_2008'),
    ]

    operations = [
        migrations.CreateModel(
            name='Gal_Image',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('photo', models.ImageField(blank=True, null=True, upload_to='post/Gal_Image/%Y/%m/%d')),
            ],
            options={
                'db_table': 'gal_image',
            },
        ),
        migrations.AlterField(
            model_name='post',
            name='featured_image',
            field=models.ImageField(blank=True, help_text='Maximum file size allowed is 200kb', null=True, upload_to='post/images/%Y/%m/%d/'),
        ),
        migrations.AddField(
            model_name='post',
            name='photos',
            field=models.ManyToManyField(blank=True, to='post.Gal_Image'),
        ),
    ]
