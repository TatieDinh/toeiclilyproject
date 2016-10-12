from __future__ import unicode_literals

from django.db import models
from tinymce.models import HTMLField
from django.contrib.auth.models import User

# Create your models here.

class WordType(models.Model):
	"""type of the exercise"""
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

class Test(models.Model):
	level= models.ForeignKey(Level)
	text = models.CharField(max_length=50)
	date_added = models.DateTimeField(auto_now_add=True)

	def __unicode__(self):
		return self.text 

class GrammarTopic(models.Model):
	level= models.ForeignKey(Level)
	title = models.CharField(max_length=200, default="")
	text = HTMLField(blank=True, null=True)
	date_added = models.DateTimeField(auto_now_add=True)

	def __unicode__(self):
		return self.title

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
	definition = models.CharField(max_length=200)
	date_added = models.DateTimeField(auto_now_add=True)
	past_tense = models.CharField(max_length=50, blank=True, null=True)
	pasticiple = models.CharField(max_length=50, blank=True, null=True)
	main_form = models.CharField(max_length=50, blank=True, null=True)
	other_form = models.CharField(max_length=50, blank=True, null=True)
	topic = models.ManyToManyField(Topic)
	image = models.FileField(upload_to="images/vocabs",blank=True, null=True)


	def __unicode__(self):
		return self.text

class Passage(models.Model):
	level= models.ForeignKey(Level)
	title = models.CharField(max_length=200, default = "")
	text = HTMLField(blank=True, null=True)
	vocabs = models.ManyToManyField(Vocab,blank=True, null=True)
	topics = models.ManyToManyField(Topic, blank=True, null=True)
	isTestSix = models.BooleanField(default=False)
	image = models.FileField(upload_to="images/passages",blank=True, null=True)
	
	date_added = models.DateTimeField(auto_now_add=True)

	def __unicode__(self):
		return self.title

class Video(models.Model):
	level= models.ForeignKey(Level)
	title = models.CharField(max_length=200, default = "")
	text = models.TextField(default="")
	url = models.URLField(null=True)
	vocabs = models.ManyToManyField(Vocab)
	listeningtopics = models.ManyToManyField(ListeningTopic)

	date_added = models.DateTimeField(auto_now_add=True)

	def __unicode__(self):
		return self.title

# # class Audio(models.Model):
# 	# text = models.CharField(max_length=200, default = "")
# 	# audio = models.FileField(upload_to=None, max_length=100)
# 	# video= models.ForeignKey(Video)
class Answer(models.Model):
	text = models.TextField(default="")
	isTrue = models.BooleanField(default = False)

	date_added = models.DateTimeField(auto_now_add=True)

	def __unicode__(self):
		return self.text


class Question(models.Model):
	level= models.ForeignKey(Level, blank=True, null=True)
	typeOf = models.ForeignKey(Type, blank=True, null=True)
	topics = models.ManyToManyField(Topic, blank=True, null=True)
	grammarTopics = models.ManyToManyField(GrammarTopic, blank=True, null=True)
	passage = models.ForeignKey(Passage, blank=True, null=True)
	#video = models.ForeignKey(Video)
	text = models.TextField(default = "")
	fulltext = models.TextField(default = "", blank=True, null=True)
	explanation = models.TextField(default = "", blank=True, null=True)
	translation = models.TextField(default = "", blank=True, null=True)
	vocabs = models.ManyToManyField(Vocab, blank=True, null=True)
	tests = models.ManyToManyField(Test, blank=True, null=True)
	answers = models.ManyToManyField(Answer, blank=True, null=True)

	date_added = models.DateTimeField(auto_now_add=True)

	def __unicode__(self):
		return self.text


class UserAnswer(models.Model):
	user = models.ForeignKey(User)
	test = models.ForeignKey(Test)
	question = models.ForeignKey(Question)
	answer = models.ForeignKey(Answer)

	date_added = models.DateTimeField(auto_now_add=True)

	def __unicode__(self):
		return self.answer

class UserVocab(models.Model):
	user = models.ForeignKey(User)
	vocab = models.ForeignKey(Vocab)
	text = models.TextField(default="")

	date_added = models.DateTimeField(auto_now_add=True)
	
	def __unicode__(self):
		return self.text

class UserAnswerGrammarQuiz(models.Model):
	user = models.ForeignKey(User)
	grammarTopic = models.ForeignKey(GrammarTopic)
	question = models.ForeignKey(Question)
	answer = models.ForeignKey(Answer)

	date_added = models.DateTimeField(auto_now_add=True)

	def __unicode__(self):
		return self.answer