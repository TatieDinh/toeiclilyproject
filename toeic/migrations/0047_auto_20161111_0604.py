# -*- coding: utf-8 -*-
# Generated by Django 1.9.10 on 2016-11-11 06:04
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('toeic', '0046_auto_20161111_0306'),
    ]

    operations = [
        migrations.CreateModel(
            name='SpeakingPracticeType',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('text', models.CharField(max_length=200)),
            ],
        ),
        migrations.RemoveField(
            model_name='speakingquestiontype',
            name='vocabs',
        ),
        migrations.AlterField(
            model_name='speakingquestion',
            name='questiontype',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='toeic.SpeakingQuestionType'),
        ),
        migrations.AddField(
            model_name='speakingpractice',
            name='practicetype',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='toeic.SpeakingPracticeType'),
        ),
    ]