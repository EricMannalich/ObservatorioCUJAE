# Generated by Django 2.2.17 on 2021-01-13 21:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0006_auto_20210113_1611'),
    ]

    operations = [
        migrations.AlterField(
            model_name='documento',
            name='tema',
            field=models.CharField(blank=True, choices=[('In', 'Informática'), ('Te', 'Telecomunicaciones')], max_length=2, null=True),
        ),
        migrations.DeleteModel(
            name='Tema',
        ),
    ]