# Generated by Django 3.0.1 on 2020-03-20 13:58

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('page', '0007_delete_menu1'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='menu',
            options={'verbose_name': 'Menu', 'verbose_name_plural': 'Menu'},
        ),
        migrations.RemoveField(
            model_name='menu',
            name='lvl',
        ),
    ]
