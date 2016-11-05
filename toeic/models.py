from __future__ import unicode_literals

from django.db import models
from tinymce.models import HTMLField
from django.contrib.auth.models import User
from ckeditor.fields import RichTextField

# Create your models here.

class WordType(models.Model):
    """type of word"""
    text = models.CharField(max_length=100, default="")
    date_added = models.DateTimeField(auto_now_add=True)

    def __unicode__(self):
        return self.text

class Type(models.Model):
    """type of the exercise"""
    text = models.CharField(max_length=100, default="")
    date_added = models.DateTimeField(auto_now_add=True)

    def __unicode__(self):
        return self.text

class Level(models.Model):
    text = models.CharField(max_length=50, default="")
    date_added = models.DateTimeField(auto_now_add=True)

    def __unicode__(self):
        return self.text

class Topic(models.Model):
    text = models.CharField(max_length=200, default="")
    date_added = models.DateTimeField(auto_now_add=True)
    image = models.FileField(upload_to="images/topics", blank=True, null=True)

    def __unicode__(self):
        return self.text

class TestType(models.Model):
    """type of the test"""
    text = models.CharField(max_length=100, default="")
    date_added = models.DateTimeField(auto_now_add=True)

    def __unicode__(self):
        return self.text

class Test(models.Model):
    testType= models.ForeignKey(TestType, blank=True, null=True)
    level= models.ForeignKey(Level)
    text = models.CharField(max_length=50)
    date_added = models.DateTimeField(auto_now_add=True)

    def __unicode__(self):
        return self.text

class GrammarTopic(models.Model):
    level= models.ForeignKey(Level)
    title = models.CharField(max_length=200, default="")
    engtitle = models.CharField(max_length=200, default="")
    text = RichTextField(blank=True, null=True)
    date_added = models.DateTimeField(auto_now_add=True)

    def __unicode__(self):
        return self.engtitle

class ListeningTopic(models.Model):
    level= models.ForeignKey(Level)
    title = models.CharField(max_length=200, default="")
    text = HTMLField(blank=True, null=True)
    date_added = models.DateTimeField(auto_now_add=True)

    def __unicode__(self):
        return self.title

class Vocab(models.Model):
    wordType= models.ForeignKey(WordType)
    level= models.ForeignKey(Level,blank=True, null=True)
    text = models.CharField(max_length=200)
    definition = models.CharField(max_length=1000)
    engdefinition = models.CharField(max_length=1000, blank=True, null=True)
    date_added = models.DateTimeField(auto_now_add=True)
    past_tense = models.CharField(max_length=50, blank=True, null=True)
    pasticiple = models.CharField(max_length=50, blank=True, null=True)
    main_form = HTMLField(blank=True, null=True)
    other_form = models.CharField(max_length=200, blank=True, null=True)
    topic = models.ManyToManyField(Topic)
    image = models.FileField(upload_to="images/vocabs",blank=True, null=True)
    audio = models.FileField(upload_to="audios/vocabs",blank=True, null=True)
    phoneticb = models.CharField(max_length=50, blank=True, null=True)
    phonetica = models.CharField(max_length=50, blank=True, null=True)
    def __unicode__(self):
        return self.text

# # class Audio(models.Model):
#   # text = models.CharField(max_length=200, default = "")
#   # audio = models.FileField(upload_to=None, max_length=100)
#   # video= models.ForeignKey(VideoLesson)

class Question(models.Model):
    order= models.IntegerField(default = 1, blank=True, null=True)
    level= models.ForeignKey(Level, blank=True, null=True)
    typeOf = models.ForeignKey(Type, blank=True, null=True)
    topics = models.ManyToManyField(Topic, blank=True, null=True)
    grammartopics = models.ManyToManyField(GrammarTopic, blank=True, null=True)
    text = models.TextField(default = "")
    fulltext = models.TextField(default = "", blank=True, null=True)
    explanation = models.TextField(default = "", blank=True, null=True)
    translation = models.TextField(default = "", blank=True, null=True)
    vocabs = models.ManyToManyField(Vocab, blank=True, null=True)
    tests = models.ManyToManyField(Test, blank=True, null=True)
    audio = models.FileField(upload_to="audios/questions",blank=True, null=True)

    date_added = models.DateTimeField(auto_now_add=True)
    class Meta:
        ordering = ('order','id')

    def __unicode__(self):
        return self.text

class Passage(models.Model):
    level= models.ForeignKey(Level)
    title = models.CharField(max_length=200, default = "")
    text = HTMLField(blank=True, null=True)
    vocabs = models.ManyToManyField(Vocab,blank=True, null=True)
    topics = models.ManyToManyField(Topic, blank=True, null=True)
    istestsix = models.BooleanField(default=False)
    image = models.FileField(upload_to="images/passages",blank=True, null=True)
    questions = models.ManyToManyField(Question, blank=True, null=True)

    date_added = models.DateTimeField(auto_now_add=True)

    def __unicode__(self):
        return self.title

class VideoLessonType(models.Model):
    """type of the test"""
    text = models.CharField(max_length=100, default="")
    date_added = models.DateTimeField(auto_now_add=True)

    def __unicode__(self):
        return self.text

class Dictation(models.Model):
    level= models.ForeignKey(Level,blank=True, null=True)
    text = models.CharField(max_length=200)
    translation = models.CharField(max_length=200)
    date_added = models.DateTimeField(auto_now_add=True)
    audio = models.FileField(upload_to="audios/dictations",blank=True, null=True)
    topics = models.ManyToManyField(Topic, blank=True, null=True)
    listeningtopics = models.ManyToManyField(ListeningTopic, blank=True, null=True)
    vocabs = models.ManyToManyField(Vocab, blank=True, null=True)
    def __unicode__(self):
        return self.text

class VideoLesson(models.Model):
    videoType = models.ForeignKey(VideoLessonType, blank=True, null=True)
    level= models.ForeignKey(Level)
    title = models.CharField(max_length=200, default = "")
    text = models.TextField(default="",blank=True, null=True)
    url = models.URLField(null=True)
    vocabs = models.ManyToManyField(Vocab, blank=True, null=True)
    topics = models.ManyToManyField(Topic, blank=True, null=True)
    listeningtopics = models.ManyToManyField(ListeningTopic, blank=True, null=True)
    dictations = models.ManyToManyField(Dictation, blank=True, null=True)
    questions = models.ManyToManyField(Question, blank=True, null=True)

    date_added = models.DateTimeField(auto_now_add=True)

    def __unicode__(self):
        return self.title

class Answer(models.Model):
    text = models.TextField(default="")
    istrue = models.BooleanField(default = False)
    question = models.ForeignKey(Question, blank=True, null=True)

    date_added = models.DateTimeField(auto_now_add=True)

    def __unicode__(self):
        return self.text

class UserAnswer(models.Model):
    session = models.IntegerField(default = 1, blank=True, null=True)
    user = models.ForeignKey(User)
    test = models.ForeignKey(Test)
    question = models.ForeignKey(Question)
    answer = models.ForeignKey(Answer)

    date_added = models.DateTimeField(auto_now_add=True)

    def __unicode__(self):
        return self.answer

class UserAnswerVideoLesson(models.Model):
    session = models.IntegerField(default = 1, blank=True, null=True)
    user = models.ForeignKey(User)
    video = models.ForeignKey(VideoLesson)
    question = models.ForeignKey(Question)
    answer = models.ForeignKey(Answer)

    date_added = models.DateTimeField(auto_now_add=True)

    def __unicode__(self):
        return self.answer

class UserVocab(models.Model):
    typeOfTest = models.IntegerField(default = 1, blank=True, null=True)
    #1 is topic, 2 is test
    session = models.IntegerField(default = 1, blank=True, null=True)
    user = models.ForeignKey(User)
    vocab = models.ForeignKey(Vocab)
    text = models.TextField(default="")

    date_added = models.DateTimeField(auto_now_add=True)

    def __unicode__(self):
        return self.text

class UserDictation(models.Model):
    session = models.IntegerField(default = 1, blank=True, null=True)
    user = models.ForeignKey(User)
    dictation = models.ForeignKey(Dictation)
    text = models.TextField(default="")

    date_added = models.DateTimeField(auto_now_add=True)

    def __unicode__(self):
        return self.text

class UserAnswerGrammarQuiz(models.Model):
    session = models.IntegerField(default = 1, blank=True, null=True)
    user = models.ForeignKey(User)
    grammartopic = models.ForeignKey(GrammarTopic, blank=True, null=True)
    question = models.ForeignKey(Question)
    answer = models.ForeignKey(Answer)

    date_added = models.DateTimeField(auto_now_add=True)

    def __unicode__(self):
        return self.answer

class PronunciationLesson(models.Model):
    videoType = models.ForeignKey(VideoLessonType, blank=True, null=True)
    level= models.ForeignKey(Level)
    title = models.CharField(max_length=200, default = "")
    text = RichTextField(blank=True, null=True)
    url = models.URLField(null=True)
    vocabs = models.ManyToManyField(Vocab, blank=True, null=True)
    dictations = models.ManyToManyField(Dictation, blank=True, null=True)

    date_added = models.DateTimeField(auto_now_add=True)

    def __unicode__(self):
        return self.title

class QuestionText(models.Model):
    order= models.IntegerField(default = 1, blank=True, null=True)
    level= models.ForeignKey(Level, blank=True, null=True)
    text = models.TextField(default = "")
    fulltext = models.TextField(default = "", blank=True, null=True)
    explanation = models.TextField(default = "", blank=True, null=True)
    translation = models.TextField(default = "", blank=True, null=True)
    vocabs = models.ManyToManyField(Vocab, blank=True, null=True)
    audio = models.FileField(upload_to="audios/questions",blank=True, null=True)

    date_added = models.DateTimeField(auto_now_add=True)
    class Meta:
        ordering = ('order','id')

    def __unicode__(self):
        return self.text

class AnswerText(models.Model):
    text = models.TextField(default="")
    question = models.ForeignKey(Question, blank=True, null=True)

    date_added = models.DateTimeField(auto_now_add=True)

    def __unicode__(self):
        return self.text

class Phrase(models.Model):
    level= models.ForeignKey(Level,blank=True, null=True)
    text = models.CharField(max_length=200)
    translation = models.CharField(max_length=200)
    date_added = models.DateTimeField(auto_now_add=True)
    audio = models.FileField(upload_to="audios/dictations",blank=True, null=True)
    topics = models.ManyToManyField(Topic, blank=True, null=True)
    listeningtopics = models.ManyToManyField(ListeningTopic, blank=True, null=True)
    vocabs = models.ManyToManyField(Vocab, blank=True, null=True)
    def __unicode__(self):
        return self.text