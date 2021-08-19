from django.shortcuts import render, redirect
from django.views import View
from .models import User
from django.views.generic.base import TemplateView
from django.contrib.auth.forms import AuthenticationForm, UserCreationForm
from django.contrib.auth import login
from django.http import HttpResponse


# Create your views here.

class Home(TemplateView):
    template_name = "home.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['login_form'] = AuthenticationForm()
        context['signup_form'] = UserCreationForm()
        return context

    def post(self, request):
        form = UserCreationForm(request.POST)
        
        if form.is_valid():
            user = form.save()
            login(request, user)
            return redirect("profile")
        else:
            context = {"signup_form": form}
            return render(request, "home.html", context)
        


class Profile(TemplateView):
    template_name = "profile.html"


class About(TemplateView):
    template_name = "about.html"


