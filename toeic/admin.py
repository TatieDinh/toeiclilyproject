from django.contrib import admin

# Register your models here.
from toeic.models import Type, WordType,TestType, Level, Topic, GrammarTopic, Test, Vocab, Question, Answer, ListeningTopic, VideoLessonType, VideoLesson, Dictation, Passage, PronunciationLesson, SpeakingQuestionType, SpeakingQuestion, SpeakingAnswer, SpeakingTopic, SpeakingLesson, SpeakingPractice, SpeakingPracticeType

class QuestionAdmin(admin.ModelAdmin):
    filter_horizontal = ('vocabs', 'topics')

class VideoLessonAdmin(admin.ModelAdmin):
    filter_horizontal = ('vocabs','dictations', 'questions')

class PronunciationLessonAdmin(admin.ModelAdmin):
    filter_horizontal = ('vocabs','dictations')

class PassageAdmin(admin.ModelAdmin):
    filter_horizontal = ('vocabs', 'questions')

class DicationAdmin(admin.ModelAdmin):
    filter_horizontal = ('vocabs',)

class SpeakingQuestionAdmin(admin.ModelAdmin):
    filter_horizontal = ('vocabs','speakinganswer',)

class SpeakingAnswerAdmin(admin.ModelAdmin):
    filter_horizontal = ('vocabs',)

class SpeakingLessonAdmin(admin.ModelAdmin):
    filter_horizontal = ('questions',)

class SpeakingTopicAdmin(admin.ModelAdmin):
    filter_horizontal = ('testset',)

class SpeakingPracticeAdmin(admin.ModelAdmin):
    filter_horizontal = ('questions','answers')

admin.site.register(Type)
admin.site.register(WordType)
admin.site.register(TestType)
admin.site.register(Level)
admin.site.register(Topic)
admin.site.register(Test)
admin.site.register(GrammarTopic)
admin.site.register(Vocab)
admin.site.register(Passage, PassageAdmin)
admin.site.register(ListeningTopic)
admin.site.register(VideoLessonType)
admin.site.register(Dictation, DicationAdmin)
admin.site.register(VideoLesson, VideoLessonAdmin)
admin.site.register(PronunciationLesson, PronunciationLessonAdmin)
# # admin.site.register(Audio)
admin.site.register(Question, QuestionAdmin)
admin.site.register(Answer)
admin.site.register(SpeakingQuestionType)
admin.site.register(SpeakingQuestion,SpeakingQuestionAdmin)
admin.site.register(SpeakingAnswer,SpeakingAnswerAdmin)
admin.site.register(SpeakingTopic,SpeakingTopicAdmin)
admin.site.register(SpeakingPracticeType)
admin.site.register(SpeakingPractice,SpeakingPracticeAdmin)
admin.site.register(SpeakingLesson,SpeakingLessonAdmin)