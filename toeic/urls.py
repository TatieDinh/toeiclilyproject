"""Define URL patterns for toeic"""
from django.conf.urls import url
from django.contrib.auth.views import login

from . import views
urlpatterns = [
	#homepage
	url(r'^$', views.index, name='index'),
	url(r'^vocabs/(?P<vocab_id>\d+)$', views.vocab, name='vocab'),
	url(r'^tests/$', views.tests, name='tests'),
	url(r'^tests/practice$', views.practicetests, name='practicetests'),
	url(r'^tests/(?P<test_id>\d+)/$', views.test, name='test'),
	url(r'^tests/result/(?P<test_id>\d+)/$', views.resulttest, name='resulttest'),
	url(r'^tests/resultvocabtest/(?P<test_id>\d+)/$', views.resultvocabtest, name='resultvocabtest'),
	url(r'^tests/checkvocabtest/(?P<test_id>\d+)/$', views.checkvocabtest, name='checkvocabtest'),
	url(r'^topics/$', views.topics, name='topics'),
	url(r'^topics/searchvocabresult/(?P<word>[\w\-]+)/$', views.searchvocabresult, name='searchvocabresult'),
	url(r'^topics/(?P<topic_id>\d+)/$', views.topic, name='topic'),
	url(r'^topics/checkvocab/(?P<topic_id>\d+)/$', views.checkvocab, name='checkvocab'),
	url(r'^topics/resultvocab/(?P<topic_id>\d+)/(?P<session>\d+)/$', views.resultvocab, name='resultvocab'),
	url(r'^login/$', login, {'template_name': 'users/login.html'}, name='login'),
	url(r'^logout/$', views.logout_view, name='logout'),
	url(r'^register/$', views.register, name='register'),
	url(r'^grammartopics/$', views.grammartopics, name='grammartopics'),
	url(r'^grammartopics/(?P<grammartopic_id>\d+)/$', views.grammartopic, name='grammartopic'),
	url(r'^grammartopics/quiz/(?P<grammartopic_id>\d+)/$', views.grammartopicquiz, name='grammartopicquiz'),
	url(r'^grammartopics/resultquiz/(?P<grammartopic_id>\d+)/$', views.resultgrammartopicquiz, name='resultgrammartopicquiz'),
	url(r'^videos/part3/$', views.toeicpart3videos, name='toeicpart3videos'),
	url(r'^videos/part3/(?P<video_id>\d+)/$', views.toeicpart3video, name='toeicpart3video'),
	url(r'^videos/result/(?P<video_id>\d+)/$', views.resulttoeicvideo, name='resuttoeicvideo'),
	url(r'^videos/dictation/(?P<video_id>\d+)/$', views.dictation, name='dictation'),
	url(r'^videos/dictation/result/(?P<video_id>\d+)/$', views.resultdictation, name='resultdictation'),
	url(r'^pronunciation/lessons/$', views.pronunciationlessons, name='pronunciationlessons'),
	url(r'^pronunciation/lessons/(?P<pronunciationlesson_id>\d+)/$', views.pronunciationlesson, name='pronunciationlesson'),
	#url(r'^pronunciation/dictation/(?P<pronunciationlesson_id>\d+)/$', views.pronunciationdictation, name='pronunciationdictation'),
	#url(r'^pronunciation/dictation/result/(?P<pronunciationlesson_id>\d+)/$', views.pronunciationresultdictation, name='pronunciationdictation'),
	url(r'^speaking/topics/$', views.speakingtopics, name='speakingtopics'),
	url(r'^speaking/topics/(?P<speakingtopic_id>\d+)/$', views.speakingtopic, name='speakingtopic'),
	url(r'^speaking/topics/(?P<speakingtopic_id>\d+)/(?P<speakinglesson_id>\d+)/$', views.speakinglesson, name='speakinglesson'),
	url(r'^speaking/topics/(?P<speakingtopic_id>\d+)/(?P<speakinglesson_id>\d+)/(?P<remain>\d+)/$', views.speakingpractice, name='speakingpractice'),
	]