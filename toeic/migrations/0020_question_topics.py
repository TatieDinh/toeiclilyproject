# -*- coding: utf-8 -*-
# Generated by Django 1.9.10 on 2016-10-14 11:14
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('toeic', '0019_remove_question_topics'),
    ]

    operations = [
        migrations.AddField(
            model_name='question',
            name='topics',
            field=models.ManyToManyField(blank=True, null=True, to='toeic.Topic'),
        ),
    ]
