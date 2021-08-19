from django.shortcuts import render, redirect
from django.views import View
from .models import User
from django.views.generic.base import TemplateView
from django.views.generic.edit import UpdateView
from django.contrib.auth.forms import AuthenticationForm, UserCreationForm
from django import forms
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

    class Meta:
        model = User
        fields = ("username", "email", "password1", "password2")    


class Profile(TemplateView):
    template_name = "profile.html"


class ProfileUpdate(UpdateView):
    model = Profile
    fields = ['name',]


class About(TemplateView):
    template_name = "about.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['login_form'] = AuthenticationForm()
        context['signup_form'] = UserCreationForm()
        return context


class PostDetail(TemplateView):
    template_name = "post_detail.html"

class UserCreationForm(UserCreationForm):
    email = forms.EmailField(required=True, label='Email')

    class Meta:
        model = User
        fields = ("username", "first_name", "last_name", "email", "password1", "password2")

    def save(self, commit=True):
        user = super(UserCreationForm, self).save(commit=False)
        user.email = self.cleaned_data["email"]
        if commit:
            user.save()
        return user