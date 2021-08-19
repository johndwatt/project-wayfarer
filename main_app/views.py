from django.shortcuts import render
from django.views import View
from django.views.generic.base import TemplateView
from django.http import HttpResponse

# Create your views here.

class Home(View):
    def get(self, request):
        return HttpResponse("You made it!")