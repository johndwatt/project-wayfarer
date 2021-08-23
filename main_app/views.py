from django.shortcuts import render, redirect
from django.urls import reverse
from django.views import View
from .models import User, Profile, Post, City
from django.views.generic.base import TemplateView
from django.views.generic.edit import UpdateView
from django.views.generic import DetailView
from django.contrib.auth.forms import AuthenticationForm
from django import forms
from django.contrib.auth import login
from django.http import HttpResponse
from .forms import UserCreationForm, ProfileForm, UserUpdateForm, ProfileUpdateForm, PostCreationForm


# Create your views here.

class Home(TemplateView):
    template_name = "home.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['login_form'] = AuthenticationForm()
        context['signup_form'] = UserCreationForm()
        context['profile_form'] = ProfileForm()
        return context

    def post(self, request):
        form = UserCreationForm(request.POST)
        profile_form = ProfileForm(request.POST)

        if form.is_valid() and profile_form.is_valid():
            user = form.save()

            profile = profile_form.save(commit=False)
            profile.user = user

            profile.save()

            login(request, user)
            return redirect("/profile/")
        else:
            context = {"signup_form": form, "profile_form": profile_form}
            return render(request, "home.html", context)
           

    class Meta:
        model = User
        fields = ("username", "email", "password1", "password2")


class ProfileRedirect(View):
    def get(self, request):
        return redirect(f"/profile/{request.user.profile.pk}")


class ProfileDetail(TemplateView):
    template_name = "profile.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['user_update_form'] = UserUpdateForm()
        context['profile_update_form'] = ProfileUpdateForm()
        context['posts'] = Post.objects.filter(user=self.request.user)
        return context

class ProfileUpdate(UpdateView):

    def post(self, request, pk):
        p_form = ProfileUpdateForm(request.POST, instance=request.user.profile)
        u_form = UserUpdateForm(request.POST, instance=request.user)

        if p_form.is_valid() and u_form.is_valid():
            u_form.save()
            p_form.save()

            return redirect("/profile/")
        else:
            p_form = ProfileUpdateForm(instance=request.user)
            u_form = UserUpdateForm(instance=request.user.profile)

            context = {"user_update_form": u_form,
            "profile_update_form": p_form}
            return render(request, "profile.html", context)


class About(TemplateView):
    template_name = "about.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['login_form'] = AuthenticationForm()
        context['signup_form'] = UserCreationForm()
        return context


class PostDetail(DetailView):
    model = Post
    template_name = "post_detail.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['posts'] = Post.objects.all()
        return context


class PostUpdate(UpdateView):
    model = Post
    fields = ['title', 'content']

    def get_success_url(self):
        return reverse("post_detail", kwargs={'pk': self.object.pk})


class CityDetail(DetailView):
    model = City
    template_name = "city_detail.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['cities'] = City.objects.all()
        context['post_create_form'] = PostCreationForm()
        return context

    def post(self, request, pk):
        post_c_form = PostCreationForm(request.POST)

        if post_c_form.is_valid():
            post_c_form.save()

            return redirect(f"/cities/{pk}/")
        else:

            context = {
                "post_create_form": post_c_form
            }
            return render(request, "city_detail.html", context)


class CityPostDelete(View):
    def post(self, request, pk, post_pk):
        post_to_delete = Post.objects.get(id=post_pk)
        post_to_delete.delete()
        return redirect(f'/cities/{pk}/')


class CityPostRedirect(View):
    def get(self, request, pk, post_pk):
        return redirect("post_detail", pk=post_pk)
