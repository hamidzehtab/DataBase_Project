# Generated by Django 4.1.5 on 2023-01-13 21:54

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='CustomUsers',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('username', models.CharField(blank=True, max_length=150, null=True)),
                ('first_name', models.CharField(blank=True, max_length=150, null=True)),
                ('last_name', models.CharField(blank=True, max_length=150, null=True)),
                ('password', models.CharField(blank=True, max_length=50, null=True)),
                ('ssid', models.CharField(blank=True, max_length=10, null=True)),
                ('phone_number', models.CharField(blank=True, max_length=11, null=True)),
                ('level', models.CharField(choices=[('2', 'admin'), ('1', 'user'), ('0', 'no_name')], default='1', max_length=1)),
            ],
        ),
    ]
