from django.contrib import admin

# Register your models here.
from toeic.models import Type, WordType, Level, Topic, GrammarTopic, Test, Vocab, Question, Answer

class QuestionAdmin(admin.ModelAdmin):
    filter_horizontal = ('vocabs','answers',)
    
admin.site.register(Type)
admin.site.register(WordType)
admin.site.register(Level)
admin.site.register(Topic)
admin.site.register(Test)
admin.site.register(GrammarTopic)
admin.site.register(Vocab)
# admin.site.register(Passage)
# admin.site.register(Video)
# # admin.site.register(Audio)
admin.site.register(Question, QuestionAdmin)
admin.site.register(Answer)