# -*- coding: utf-8 -*-
# Generated by Django 1.9.10 on 2016-10-22 13:40
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('toeic', '0037_auto_20161022_1308'),
    ]

    operations = [
        migrations.AddField(
            model_name='uservocab',
            name='typeOfTest',
            field=models.IntegerField(blank=True, default=1, null=True),
        ),
    ]
