from django.contrib import admin

# Register your models here.
from toeic.models import Type, WordType,TestType, Level, Topic, GrammarTopic, Test, Vocab, Question, Answer, ListeningTopic, VideoLessonType, VideoLesson, Dictation, Passage, PronunciationLesson

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