# Generated by Django 2.2.17 on 2021-01-13 21:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0005_auto_20210113_1524'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='autor_tutor',
            name='autor',
        ),
        migrations.RemoveField(
            model_name='autor_tutor',
            name='autor_principal',
        ),
        migrations.RemoveField(
            model_name='autor_tutor',
            name='tutor',
        ),
        migrations.AddField(
            model_name='autor_tutor',
            name='participacion',
            field=models.CharField(blank=True, choices=[('P', 'Autor principal'), ('S', 'Autor secundario'), ('T', 'Tutor')], max_length=1, null=True),
        ),
    ]
