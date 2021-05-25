# Generated by Django 2.2.17 on 2021-05-25 12:44

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0010_auto_20210323_1527'),
    ]

    operations = [
        migrations.CreateModel(
            name='Tema',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=80, unique=True)),
            ],
        ),
        migrations.AlterField(
            model_name='documento',
            name='tema',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='app.Tema'),
            preserve_default=False,
        ),
    ]