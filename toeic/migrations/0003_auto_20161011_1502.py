# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2016-10-11 08:02
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion
import tinymce.models


class Migration(migrations.Migration):

    dependencies = [
        ('toeic', '0002_grammartopic_test_vocab'),
    ]

    operations = [
        migrations.CreateModel(
            name='Answer',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('text', models.TextField(default='')),
                ('isTrue', models.BooleanField(default=False)),
                ('date_added', models.DateTimeField(auto_now_add=True)),
            ],
        ),
        migrations.CreateModel(
            name='Passage',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(default='', max_length=200)),
                ('text', tinymce.models.HTMLField(default='add content')),
                ('isTestSix', models.BooleanField(default=False)),
                ('date_added', models.DateTimeField(auto_now_add=True)),
                ('level', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='toeic.Level')),
                ('topics', models.ManyToManyField(to='toeic.Topic')),
                ('vocabs', models.ManyToManyField(to='toeic.Vocab')),
            ],
        ),
        migrations.CreateModel(
            name='Question',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('text', models.TextField(default='')),
                ('fulltext', models.TextField(default='')),
                ('explanation', models.TextField(default='')),
                ('translation', models.TextField(default='')),
                ('date_added', models.DateTimeField(auto_now_add=True)),
                ('grammarTopics', models.ManyToManyField(to='toeic.GrammarTopic')),
                ('level', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='toeic.Level')),
                ('passage', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='toeic.Passage')),
                ('tests', models.ManyToManyField(to='toeic.Test')),
                ('topics', models.ManyToManyField(to='toeic.Topic')),
                ('typeOf', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='toeic.Type')),
                ('vocabs', models.ManyToManyField(to='toeic.Vocab')),
            ],
        ),
        migrations.AddField(
            model_name='answer',
            name='question',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='toeic.Question'),
        ),
    ]