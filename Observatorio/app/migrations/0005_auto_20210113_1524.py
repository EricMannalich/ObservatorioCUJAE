# Generated by Django 2.2.17 on 2021-01-13 20:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0004_auto_20210113_1505'),
    ]

    operations = [
        migrations.AlterField(
            model_name='documento',
            name='idioma',
            field=models.CharField(blank=True, choices=[('CA', 'Catalan'), ('CE', 'Checo'), ('DA', 'Danés'), ('DE', 'Alemán'), ('EN', 'Ingles'), ('ES', 'Español'), ('FR', 'Francés'), ('HI', 'Hindi'), ('JA', 'Japonés'), ('PT', 'Portugués'), ('RU', 'Ruso'), ('ZH', 'Chino')], max_length=2, null=True),
        ),
    ]
