# Generated by Django 3.0.1 on 2020-01-05 04:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('post', '0004_auto_20200104_0122'),
    ]

    operations = [
        migrations.AlterField(
            model_name='post',
            name='status',
            field=models.CharField(choices=[('Drafted', 'Drafted'), ('Published', 'Published'), ('Rejected', 'Rejected'), ('Trashed', 'Trashed')], default='Published', max_length=10),
        ),
    ]
