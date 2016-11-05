# Create your views here.
import operator
from collections import OrderedDict
from django.shortcuts import render
from .models import Topic, Test, Question, Answer, Vocab, UserVocab, UserAnswer, GrammarTopic, UserAnswerGrammarQuiz, UserAnswerVideoLesson, UserDictation, VideoLesson, Dictation, PronunciationLesson
from django.http import HttpResponseRedirect
from django.core.urlresolvers import reverse
from django.contrib.auth import login, logout, authenticate
from django.contrib.auth.forms import UserCreationForm
from .form import UserVocabForm, UserDictationForm, UserAnswerForm, UserAnswerGrammarQuizForm, SearchForm

# Create your views here.
def index(request):
    """The home page for toeic"""
    return render(request, 'toeic/index.html')

def vocab(request,vocab_id):
    """Show 1 word"""
    vocab = Vocab.objects.get(id=vocab_id)
    question = vocab.question_set.all().first()
    context = {'vocab': vocab, 'question': question}

    return render(request, 'toeic/vocab.html', context)

def tests(request):
    """Show all tests"""
    tests = Test.objects.filter(testType=1).order_by('date_added')
    context = {'tests': tests}
    return render(request, 'toeic/tests.html', context)

def practicetests(request):
    """Show all practicetests"""
    practicetests = Test.objects.filter(testType=2).order_by('date_added')
    context = {'tests': practicetests}
    return render(request, 'toeic/practicetests.html', context)

def topics(request):
    """Show all topics"""
    if request.method != 'POST':
        form = SearchForm()
    else:
        form = SearchForm(request.POST)
        if form.is_valid():
            word = form.cleaned_data['text']
            return HttpResponseRedirect(reverse('toeic:searchvocabresult', args=[word]))

    topics = Topic.objects.order_by('text')
    context = {'topics':topics, 'form':form}

    return render(request, 'toeic/topics.html', context)

def searchvocabresult(request, word):
    vocabs = Vocab.objects.filter(text__icontains=word)
    vocabsdict = OrderedDict()
    for vocab in vocabs:
        question = vocab.question_set.all().first()
        vocabsdict[vocab] = question

    context = {'vocabs':vocabsdict}
    return render(request, 'toeic/searchvocabresult.html', context)

def topic(request, topic_id):
    """show a single topic and all its vocabs"""
    topic = Topic.objects.get(id=topic_id)
    vocabs = topic.vocab_set.all()
    vocabsdict = OrderedDict()
    for vocab in vocabs:
        question = vocab.question_set.all().first()
        vocabsdict[vocab] = question
    context = {'topic': topic, 'vocabs':vocabsdict}
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
        try:
            lastanswer = UserVocab.objects.filter(user = currentUser.id).latest("date_added")
            session = lastanswer.session + 1
        except UserVocab.DoesNotExist:
            session = 1

        for vocab in vocabs:
            form = UserVocabForm(request.POST, prefix=vocab.id)
            if form.is_valid():
                new_uservocab = UserVocab()
                new_uservocab.session = session
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

    try:
        lastanswer = UserVocab.objects.filter(user = currentUser.id).latest("date_added")
        session = lastanswer.session

        for vocab in vocabs:
            if UserVocab.objects.filter(user = currentUser.id).filter(session = session).filter(vocab = vocab.id).exists():
                user_uservocab = UserVocab.objects.filter(user = currentUser.id).filter(session = session).filter(vocab = vocab.id).latest("date_added")
                user_vocab = user_uservocab.text
            else:
                user_vocab = "Unknown"
            vocabs_dict[vocab] = user_vocab
    except UserVocab.DoesNotExist:
        for vocab in vocabs:
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
        try:
            lastanswer = UserVocab.objects.filter(user = currentUser.id).latest("date_added")
            session = lastanswer.session + 1
        except UserVocab.DoesNotExist:
            session = 1

        for vocab in vocabs_list:
            form = UserVocabForm(request.POST, prefix=vocab.id)
            if form.is_valid():
                new_uservocab = UserVocab()
                new_uservocab.session = session
                new_uservocab.typeOfTest = 2
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

    try:
        lastanswer = UserVocab.objects.filter(user = currentUser.id).latest("date_added")
        session = lastanswer.session

        for vocab in vocabs:
            if UserVocab.objects.filter(user = currentUser.id).filter(session = session).filter(vocab = vocab.id).exists():
                user_uservocab = UserVocab.objects.filter(user = currentUser.id).filter(session = session).filter(vocab = vocab.id).latest("date_added")
                user_vocab = user_uservocab.text
            else:
                user_vocab = "Unknown"
            vocabs_dict[vocab] = user_vocab
    except UserVocab.DoesNotExist:
        for vocab in vocabs:
            user_vocab = "Unknown"
            vocabs_dict[vocab] = user_vocab

    context = {'test': test, 'vocabs':vocabs_dict}
    return render(request, 'toeic/resultvocabtest.html', context)

def test(request, test_id):
    test = Test.objects.get(id=test_id)
    questions = test.question_set.all()
    questions_dict = OrderedDict()
    if request.user.is_authenticated():
        currentUser = request.user
    else:
        return HttpResponseRedirect(reverse('toeic:index'))

    if request.method != 'POST':
        for question in questions:
            form = UserAnswerForm(question.id, prefix=question.id)
            questions_dict[question] = form
    else:
        try:
            lastanswer = UserAnswer.objects.filter(user = currentUser.id).latest("date_added")
            session = lastanswer.session + 1
        except UserAnswer.DoesNotExist:
            session = 1

        for question in questions:
            form = UserAnswerForm(question.id, request.POST, prefix=question.id)
            if form.is_valid():
                new_useranswer = UserAnswer()
                new_useranswer.session = session
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
    questions_dict = OrderedDict()
    iscorrect = False
    rightanswers = 0
    if request.user.is_authenticated():
        currentUser = request.user
    else:
        return HttpResponseRedirect(reverse('toeic:index'))

    try:
        lastanswer = UserAnswer.objects.filter(user = currentUser.id).latest("date_added")
        session = lastanswer.session

        for question in questions:
            if UserAnswer.objects.filter(user = currentUser.id).filter(session = session).filter(question = question.id).exists():
                user_useranswer = UserAnswer.objects.filter(user = currentUser.id).filter(session = session).filter(question = question.id).latest("date_added")
                useranswer = user_useranswer.answer.text
            else:
                useranswer = "Unknown"
            answers = question.answer_set.all()
            for answer in answers:
                if answer.istrue == True and useranswer == answer.text:
                    iscorrect = True
                    rightanswers += 1
            grammar = GrammarTopic.objects.filter(question = question)
            vocabs = question.vocabs.all()
            questions_dict[question] = []
            questions_dict[question].append(answers)
            questions_dict[question].append(useranswer)
            questions_dict[question].append(grammar)
            questions_dict[question].append(iscorrect)
            questions_dict[question].append(vocabs)
            iscorrect = False

    except UserAnswer.DoesNotExist:
        for question in questions:
            useranswer = "Unknown"
            answers = question.answer_set.all()
            grammar = GrammarTopic.objects.filter(question = question)
            vocabs = GrammarTopic.objects.filter(question = question)
            questions_dict[question] = []
            questions_dict[question].append(answers)
            questions_dict[question].append(useranswer)
            questions_dict[question].append(grammar)
            questions_dict[question].append(iscorrect)
            questions_dict[question].append(vocabs)
            iscorrect = False

    context = {'test': test, 'questions':questions_dict, 'rightanswers':rightanswers}
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
    questions_dict = OrderedDict()
    if request.user.is_authenticated():
        currentUser = request.user
    else:
        return HttpResponseRedirect(reverse('toeic:index'))

    if request.method != 'POST':
        for question in questions:
            form = UserAnswerForm(question.id, prefix=question.id)
            questions_dict[question] = form
    else:
        try:
            lastanswer = UserAnswerGrammarQuiz.objects.filter(user = currentUser.id).latest("date_added")
            session = lastanswer.session + 1
        except UserAnswer.DoesNotExist:
            session = 1

        for question in questions:
            form = UserAnswerForm(question.id, request.POST, prefix=question.id)
            if form.is_valid():
                new_useranswer = UserAnswerGrammarQuiz()
                new_useranswer.user = currentUser
                new_useranswer.session = session
                new_useranswer.question = question
                new_useranswer.grammartopic = grammartopic
                new_useranswer.answer = form.cleaned_data['answer']
                new_useranswer.save(force_insert=True)
            questions_dict[question] = form

        return HttpResponseRedirect(reverse('toeic:resultgrammartopicquiz', args=[grammartopic.id]))

    context = {'grammartopic': grammartopic, 'questions':questions_dict}
    return render(request, 'toeic/grammartopicquiz.html', context)

def resultgrammartopicquiz(request, grammartopic_id):
    grammartopic = GrammarTopic.objects.get(id=grammartopic_id)
    questions = grammartopic.question_set.all()
    questions_dict = OrderedDict()
    iscorrect = False
    rightanswers = 0
    if request.user.is_authenticated():
        currentUser = request.user
    else:
        return HttpResponseRedirect(reverse('toeic:index'))

    try:
        lastanswer = UserAnswerGrammarQuiz.objects.filter(user = currentUser.id).latest("date_added")
        session = lastanswer.session

        for question in questions:
            if UserAnswerGrammarQuiz.objects.filter(user = currentUser.id).filter(session = session).filter(question = question.id).exists():
                user_useranswer = UserAnswerGrammarQuiz.objects.filter(user = currentUser.id).filter(session = session).filter(question = question.id).latest("date_added")
                useranswer = user_useranswer.answer.text
            else:
                useranswer = "Unknown"
            answers = question.answer_set.all()
            for answer in answers:
                if answer.istrue == True and useranswer == answer.text:
                    iscorrect = True
                    rightanswers += 1
            grammar = GrammarTopic.objects.filter(question = question)
            vocabs = GrammarTopic.objects.filter(question = question)
            questions_dict[question] = []
            questions_dict[question].append(answers)
            questions_dict[question].append(useranswer)
            questions_dict[question].append(grammar)
            questions_dict[question].append(iscorrect)
            questions_dict[question].append(vocabs)
            iscorrect = False

    except UserAnswerGrammarQuiz.DoesNotExist:
        for question in questions:
            useranswer = "Unknown"
            answers = question.answer_set.all()
            grammar = GrammarTopic.objects.filter(question = question)
            vocabs = GrammarTopic.objects.filter(question = question)
            questions_dict[question] = []
            questions_dict[question].append(answers)
            questions_dict[question].append(useranswer)
            questions_dict[question].append(grammar)
            questions_dict[question].append(iscorrect)
            questions_dict[question].append(vocabs)
            iscorrect = False

    context = {'grammartopic': grammartopic, 'questions':questions_dict}
    return render(request, 'toeic/resultgrammartopicquiz.html', context)

def toeicpart3videos(request):
    """Show all videos"""
    videos = VideoLesson.objects.filter(videoType=1).order_by('id')
    context = {'videos': videos}
    return render(request, 'toeic/videos.html', context)

def toeicpart3video(request, video_id):
    video = VideoLesson.objects.get(id=video_id)
    vocabs = video.vocabs.all()
    questions = video.questions.all()
    #questions = sorted(unsortedquestions, key=operator.attrgetter('order'))

    questions_dict = OrderedDict()

    if request.user.is_authenticated():
        currentUser = request.user
    else:
        return HttpResponseRedirect(reverse('toeic:index'))

    if request.method != 'POST':
        for question in questions:
            form = UserAnswerForm(question.id, prefix=question.id)
            questions_dict[question] = form
    else:
        try:
            lastanswer = UserAnswerVideoLesson.objects.filter(user = currentUser.id).latest("date_added")
            session = lastanswer.session + 1
        except UserAnswerVideoLesson.DoesNotExist:
            session = 1

        for question in questions:
            form = UserAnswerForm(question.id, request.POST, prefix=question.id)
            if form.is_valid():
                new_useranswer = UserAnswerVideoLesson()
                new_useranswer.session = session
                new_useranswer.user = currentUser
                new_useranswer.question = question
                new_useranswer.video = video
                new_useranswer.answer = form.cleaned_data['answer']
                new_useranswer.save(force_insert=True)
            questions_dict[question] = form

        return HttpResponseRedirect(reverse('toeic:resuttoeicvideo', args=[video.id]))


    context = {'video': video, 'questions': questions_dict, 'vocabs':vocabs}
    return render(request, 'toeic/video.html', context)


def resulttoeicvideo(request, video_id):
    video = VideoLesson.objects.get(id=video_id)
    vocabs = video.vocabs.all()
    questions = video.questions.all()
    questions_dict = OrderedDict()
    iscorrect = False
    rightanswers = 0
    if request.user.is_authenticated():
        currentUser = request.user
    else:
        return HttpResponseRedirect(reverse('toeic:index'))

    try:
        lastanswer = UserAnswerVideoLesson.objects.filter(user = currentUser.id).latest("date_added")
        session = lastanswer.session

        for question in questions:
            if UserAnswerVideoLesson.objects.filter(user = currentUser.id).filter(session = session).filter(question = question.id).exists():
                user_useranswer = UserAnswerVideoLesson.objects.filter(user = currentUser.id).filter(session = session).filter(question = question.id).latest("date_added")
                useranswer = user_useranswer.answer.text
            else:
                useranswer = "Unknown"
            answers = question.answer_set.all()
            for answer in answers:
                if answer.istrue == True and useranswer == answer.text:
                    iscorrect = True
                    rightanswers += 1
            questions_dict[question] = []
            questions_dict[question].append(answers)
            questions_dict[question].append(useranswer)
            questions_dict[question].append(iscorrect)
            iscorrect = False

    except UserAnswerVideoLesson.DoesNotExist:
        for question in questions:
            useranswer = "Unknown"
            answers = question.answer_set.all()
            iscorrect = False
            questions_dict[question] = []
            questions_dict[question].append(answers)
            questions_dict[question].append(useranswer)
            questions_dict[question].append(iscorrect)

    context = {'video': video, 'questions':questions_dict, 'rightanswers':rightanswers, 'vocabs':vocabs}
    return render(request, 'toeic/resultvideo.html', context)

def dictation(request, video_id):
    video = VideoLesson.objects.get(id=video_id)
    dictations = video.dictations.all().order_by('level')
    dictations_dict = OrderedDict()
    if request.user.is_authenticated():
            currentUser = request.user
    else:
        return HttpResponseRedirect(reverse('toeic:index'))

    if request.method != 'POST':
        for dictation in dictations:
            form = UserDictationForm(prefix=dictation.id)
            vocab = dictation.vocabs.all().order_by('level')
            dictations_dict[dictation] = []
            dictations_dict[dictation].append(form)
            dictations_dict[dictation].append(vocab)
    else:
        try:
            lastanswer = UserDictation.objects.filter(user = currentUser.id).latest("date_added")
            session = lastanswer.session + 1
        except UserDictation.DoesNotExist:
            session = 1

        for dictation in dictations:
            form = UserDictationForm(request.POST, prefix=dictation.id)
            if form.is_valid():
                new_userdictation = UserDictation()
                new_userdictation.user = currentUser
                new_userdictation.session = session
                new_userdictation.dictation = dictation
                new_userdictation.text = form.cleaned_data['text']
                new_userdictation.save(force_insert=True)

        return HttpResponseRedirect(reverse('toeic:resultdictation', args=[video.id]))

    context = {'video': video, 'dictations':dictations_dict}
    return render(request, 'toeic/dictation.html', context)

def resultdictation(request, video_id):
    video = VideoLesson.objects.get(id=video_id)
    dictations = video.dictations.all()
    dictations_dict = OrderedDict()
    if request.user.is_authenticated():
        currentUser = request.user
    else:
        return HttpResponseRedirect(reverse('toeic:index'))

    try:
        lastanswer = UserDictation.objects.filter(user = currentUser.id).latest("date_added")
        session = lastanswer.session

        for dictation in dictations:
            if UserDictation.objects.filter(user = currentUser.id).filter(session = session).filter(dictation = dictation.id).exists():
                user_userdictation = UserDictation.objects.filter(user = currentUser.id).filter(session = session).filter(dictation = dictation.id).latest("date_added")
                user_dictation = user_userdictation.text
            else:
                user_dictation = "Unknown"
            dictations_dict[dictation] = user_dictation
    except UserDictation.DoesNotExist:
         for dictation in dictations:
            user_dictation = "Unknown"
            dictations_dict[dictation] = user_dictation

    context = {'video': video, 'dictations':dictations_dict}
    return render(request, 'toeic/resultdictation.html', context)

def pronunciationlessons(request):
    """Show all videos"""
    prounciationlessons = PronunciationLesson.objects.order_by('id')
    context = {'pronunciationlessons': prounciationlessons}
    return render(request, 'toeic/pronunciationlessons.html', context)

def pronunciationlesson(request, pronunciationlesson_id):
    pronunciationlesson = PronunciationLesson.objects.get(id=pronunciationlesson_id)
    vocabs = pronunciationlesson.vocabs.all()

    context = {'pronunciationlesson': pronunciationlesson, 'vocabs':vocabs}
    return render(request, 'toeic/pronunciationlesson.html', context)
