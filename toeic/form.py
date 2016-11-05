from django import forms

from .models import UserVocab, Answer, Question, UserAnswer

class SearchForm(forms.Form):

	text = forms.CharField(label='Answer')

class UserVocabForm(forms.Form):

	text = forms.CharField(label='Answer')

	# def __init__(self, vocab_id, user_id):
	# 	super(UserVocabForm, self).__init__()
	# 	self.fields['user'] = user_id
	# 	self.fields['vocab'] = vocab_id

class UserDictationForm(forms.Form):
	text = forms.CharField(label='Answer',widget=forms.Textarea(attrs={'class': 'dictationarea'}))

class UserAnswerForm(forms.Form):
	answer = forms.ModelChoiceField(queryset=Answer.objects.none(), widget=forms.RadioSelect)

	def __init__(self, question_id, *args, **kwargs):
		super(UserAnswerForm, self).__init__(*args, **kwargs)
		self.fields['answer'].queryset = Answer.objects.filter(question=question_id)
		self.fields['answer'].empty_label = None

class UserAnswerGrammarQuizForm(forms.Form):
	answer = forms.ModelChoiceField(queryset=Answer.objects.none(), widget=forms.RadioSelect)

	def __init__(self, question_id, *args, **kwargs):
		super(UserAnswerGrammarQuizForm, self).__init__(*args, **kwargs)
		self.fields['answer'].queryset = Answer.objects.filter(question=question_id)
		self.fields['answer'].empty_label = None