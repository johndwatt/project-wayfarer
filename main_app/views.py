from django.shortcuts import render
from django.views import View
from .models import User
from django.views.generic.base import TemplateView
from django.contrib.auth.forms import AuthenticationForm
from django.http import HttpResponse

# Create your views here.

class Home(TemplateView):
    template_name = "home.html"
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['login_form'] = AuthenticationForm()
        return context

class Profile(TemplateView):
    template_name = "profile.html"


class About(TemplateView):
    template_name = "about.html"


