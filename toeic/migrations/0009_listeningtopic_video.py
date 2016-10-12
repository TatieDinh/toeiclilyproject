# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2016-10-12 06:05
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion
import tinymce.models


class Migration(migrations.Migration):

    dependencies = [
        ('toeic', '0008_auto_20161012_0905'),
    ]

    operations = [
        migrations.CreateModel(
            name='ListeningTopic',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(default='', max_length=200)),
                ('text', tinymce.models.HTMLField(blank=True, null=True)),
                ('date_added', models.DateTimeField(auto_now_add=True)),
                ('level', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='toeic.Level')),
            ],
        ),
        migrations.CreateModel(
            name='Video',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(default='', max_length=200)),
                ('text', models.TextField(default='')),
                ('url', models.URLField(null=True)),
                ('date_added', models.DateTimeField(auto_now_add=True)),
                ('level', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='toeic.Level')),
                ('listeningtopics', models.ManyToManyField(to='toeic.ListeningTopic')),
                ('vocabs', models.ManyToManyField(to='toeic.Vocab')),
            ],
        ),
    ]