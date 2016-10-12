from django.shortcuts import render

# Create your views here.
from django.shortcuts import render
from .models import Topic, Test, Question, Answer, Vocab, UserVocab, UserAnswer, GrammarTopic, UserAnswerGrammarQuiz
from django.http import HttpResponseRedirect
from django.core.urlresolvers import reverse 
from django.contrib.auth import login, logout, authenticate
from django.contrib.auth.forms import UserCreationForm
from .form import UserVocabForm, UserAnswerForm, UserAnswerGrammarQuizForm
from collections import defaultdict

# Create your views here.
def index(request):
	"""The home page for toeic"""
	return render(request, 'toeic/index.html')

def tests(request):
	"""Show all tests"""
	tests = Test.objects.order_by('date_added')
	context = {'tests': tests}
	return render(request, 'toeic/tests.html', context)

def test(request, test_id):
	test = Test.objects.get(id=test_id)
	questions = test.question_set.all()
	questions_dict = {}
	for question in questions:
		answers_list = question.answer_set.all()
		questions_dict[question] = answers_list
	context = {'test': test, 'questions': questions_dict}
	return render(request, 'toeic/test.html', context)

def topics(request):
	"""Show all tests"""
	topics = Topic.objects.order_by('text')
	context = {'topics':topics}
	return render(request, 'toeic/topics.html', context)

def topic(request, topic_id):
	"""show a single topic and all its vocabs"""
	topic = Topic.objects.get(id=topic_id)
	vocabs = topic.vocab_set.all()
	context = {'topic': topic, 'vocabs':vocabs}
	return render(request, 'toeic/topic.html', context)

def checkvocab(request, topic_id): 
	topic = Topic.objects.get(id=topic_id)
	vocabs = topic.vocab_set.all()
	vocabs_dict = {}
	if request.user.is_authenticated():
			currentUser = request.user
	else:
		return HttpResponseRedirect(reverse('toeic:index'))

	if request.method != 'POST':
		for vocab in vocabs:
			form = UserVocabForm(prefix=vocab.id)
			vocabs_dict[vocab] = form
	else:
		for vocab in vocabs:
			form = UserVocabForm(request.POST, prefix=vocab.id)
		 	if form.is_valid():
		 		new_uservocab = UserVocab()
		 		new_uservocab.user = currentUser
		 		new_uservocab.vocab = vocab
		 		new_uservocab.text = form.cleaned_data['text']
		 		new_uservocab.save(force_insert=True)
			vocabs_dict[vocab] = form

		return HttpResponseRedirect(reverse('toeic:resultvocab', args=[topic.id]))

	context = {'topic': topic, 'vocabs':vocabs_dict}
	return render(request, 'toeic/checkvocab.html', context)

def resultvocab(request, topic_id): 
	topic = Topic.objects.get(id=topic_id)
	vocabs = topic.vocab_set.all()
	vocabs_dict = {}
	if request.user.is_authenticated():
		currentUser = request.user
	else:
		return HttpResponseRedirect(reverse('toeic:index'))

	for vocab in vocabs:
		if UserVocab.objects.filter(vocab = vocab.id).exists():
 			user_uservocab = UserVocab.objects.filter(vocab = vocab.id).latest("date_added")
			user_vocab = user_uservocab.text
 		else: 
 			user_vocab = "Unknown"	
		vocabs_dict[vocab] = user_vocab

	context = {'topic': topic, 'vocabs':vocabs_dict}
	return render(request, 'toeic/resultvocab.html', context)

def checkvocabtest(request, test_id): 
	test = Test.objects.get(id=test_id)
	questions = test.question_set.all()
	vocabs_list = []
	
	for question in questions:
		vocabs = question.vocabs.all()
		for vocab in vocabs:
			vocabs_list.append(vocab)

	vocabs_dict = {}

	if request.user.is_authenticated():
			currentUser = request.user
	else:
		return HttpResponseRedirect(reverse('toeic:index'))

	if request.method != 'POST':
		for vocab in vocabs_list:
			form = UserVocabForm(prefix=vocab.id)
			vocabs_dict[vocab] = form
	else:
		for vocab in vocabs_list:
			form = UserVocabForm(request.POST, prefix=vocab.id)
		 	if form.is_valid():
		 		new_uservocab = UserVocab()
		 		new_uservocab.user = currentUser
		 		new_uservocab.vocab = vocab
		 		new_uservocab.text = form.cleaned_data['text']
		 		new_uservocab.save(force_insert=True)
			vocabs_dict[vocab] = form
		return HttpResponseRedirect(reverse('toeic:resultvocabtest', args=[test.id]))

	context = {'test': test, 'vocabs':vocabs_dict}
	return render(request, 'toeic/checkvocabtest.html', context)

def resultvocabtest(request, test_id): 
	if request.user.is_authenticated():
		currentUser = request.user
	else:
		return HttpResponseRedirect(reverse('toeic:index'))

	test = Test.objects.get(id=test_id)
	questions = test.question_set.all()
	vocabs_list = []
	for question in questions:
		vocabs = question.vocabs.all()
		for vocab in vocabs:
			vocabs_list.append(vocab)

	vocabs_dict = {}
	for vocab in vocabs_list:
		if UserVocab.objects.filter(vocab = vocab.id).exists():
 			user_uservocab = UserVocab.objects.filter(vocab = vocab.id).latest("date_added")
			user_vocab = user_uservocab.text
 		else: 
 			user_vocab = "Unknown"	
		vocabs_dict[vocab] = user_vocab

	context = {'test': test, 'vocabs':vocabs_dict}
	return render(request, 'toeic/resultvocabtest.html', context)


def test(request, test_id): 
	test = Test.objects.get(id=test_id)
	questions = test.question_set.all()
	questions_dict = {}
	if request.user.is_authenticated():
		currentUser = request.user
	else:
		return HttpResponseRedirect(reverse('toeic:index'))
		
	if request.method != 'POST':
		for question in questions:
			form = UserAnswerForm(question.id, prefix=question.id)
			questions_dict[question] = form
	else:
		for question in questions:
			form = UserAnswerForm(question.id, request.POST, prefix=question.id)
		 	if form.is_valid():
		 		new_useranswer = UserAnswer()
		 		new_useranswer.user = currentUser
		 		new_useranswer.question = question
		 		new_useranswer.test = test
		 		new_useranswer.answer = form.cleaned_data['answer']
		 		new_useranswer.save(force_insert=True)
			questions_dict[question] = form

		return HttpResponseRedirect(reverse('toeic:resulttest', args=[test.id]))	

	context = {'test': test, 'questions':questions_dict}
	return render(request, 'toeic/test.html', context)

def resulttest(request, test_id): 
	test = Test.objects.get(id=test_id)
	questions = test.question_set.all()
	questions_dict = {}
	if request.user.is_authenticated():
		currentUser = request.user
	else:
		return HttpResponseRedirect(reverse('toeic:index'))
	
	for question in questions:
		if UserAnswer.objects.filter(question = question.id).exists():
 			user_useranswer = UserAnswer.objects.filter(question = question.id).latest("date_added")
 			useranswer = user_useranswer.answer
 		else: 
 			useranswer = "Unknown"	
 		answers = question.answers.all()
 		grammar = GrammarTopic.objects.filter(question = question)
 		vocabs = GrammarTopic.objects.filter(question = question)
		questions_dict[question] = []
		questions_dict[question].append(answers)
		questions_dict[question].append(useranswer)
		questions_dict[question].append(grammar)

	context = {'test': test, 'questions':questions_dict}
	return render(request, 'toeic/resulttest.html', context)


def logout_view(request): 
	logout(request)
	return HttpResponseRedirect(reverse('toeic:index'))

def register(request): 
	"""Register a new user.""" 
	if request.method != 'POST':
		form = UserCreationForm() 
	else: 
		form = UserCreationForm(data = request.POST)

	if form.is_valid():
		new_user = form.save()
		authenticated_user = authenticate(username=new_user.username, password=request.POST['password1']) 
		login(request, authenticated_user) 
		return HttpResponseRedirect(reverse('toeic:index'))

	context = {'form': form}
	return render(request, 'users/register.html', context) 

def grammartopics(request):
	"""Show all tests"""
	grammars = GrammarTopic.objects.order_by('date_added')
	context = {'grammartopics': grammars}
	return render(request, 'toeic/grammartopics.html', context)

def grammartopic(request, grammartopic_id):
	grammar = GrammarTopic.objects.get(id=grammartopic_id)
	
	context = {'grammartopic': grammar}
	return render(request, 'toeic/grammartopic.html', context)

def grammartopicquiz(request, grammartopic_id): 
	grammartopic = GrammarTopic.objects.get(id=grammartopic_id)
	questions = grammartopic.question_set.all()
	questions_dict = {}
	if request.user.is_authenticated():
		currentUser = request.user
	else:
		return HttpResponseRedirect(reverse('toeic:index'))
		
	if request.method != 'POST':
		for question in questions:
			form = UserAnswerForm(question.id, prefix=question.id)
			questions_dict[question] = form
	else:
		for question in questions:
			form = UserAnswerGrammarQuizForm(question.id, request.POST, prefix=question.id)
		 	if form.is_valid():
		 		new_useranswer = UserAnswerGrammarQuiz()
		 		new_useranswer.user = currentUser
		 		new_useranswer.question = question
		 		new_useranswer.grammarTopic = grammartopic
		 		new_useranswer.answer = form.cleaned_data['answer']
		 		new_useranswer.save(force_insert=True)
			questions_dict[question] = form

		return HttpResponseRedirect(reverse('toeic:resultgrammartopicquiz', args=[grammartopic.id]))	

	context = {'grammartopic': grammartopic, 'questions':questions_dict}
	return render(request, 'toeic/grammartopicquiz.html', context)

def resultgrammartopicquiz(request, grammartopic_id): 
	grammartopic = GrammarTopic.objects.get(id=grammartopic_id)
	questions = grammartopic.question_set.all()
	questions_dict = {}
	if request.user.is_authenticated():
		currentUser = request.user
	else:
		return HttpResponseRedirect(reverse('toeic:index'))
	
	for question in questions:
 		if UserAnswer.objects.filter(question = question.id).exists():
 			user_useranswer = UserAnswer.objects.filter(question = question.id).latest("date_added")
 			useranswer = user_useranswer.answer
 		else: 
 			useranswer = "Unknown"
 		answers = question.answers.all()
 		grammar = GrammarTopic.objects.filter(question = question)
 		vocabs = GrammarTopic.objects.filter(question = question)
		questions_dict[question] = []
		questions_dict[question].append(answers)
		questions_dict[question].append(useranswer)
		questions_dict[question].append(grammar)

	context = {'grammartopic': grammartopic, 'questions':questions_dict}
	return render(request, 'toeic/resultgrammartopicquiz.html', context)