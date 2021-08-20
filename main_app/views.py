from django.shortcuts import render, redirect
from django.views import View
from .models import User, Profile
from django.views.generic.base import TemplateView
from django.views.generic.edit import UpdateView
from django.contrib.auth.forms import AuthenticationForm
from django import forms
from django.contrib.auth import login
from django.http import HttpResponse
from .forms import UserCreationForm, ProfileForm, UserUpdateForm, ProfileUpdateForm


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
        return context

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

    # def profile_update(request):
    #     if request.method == 'POST':
    #         p_form = ProfileUpdateForm(
    #             request.POST, request.FILES, instance=request.user.profile)
    #         u_form = UserUpdateForm(request.POST, instance=request.user)
    #         if p_form.is_valid() and u_form.is_valid():
    #             u_form.save()
    #             p_form.save()

    #             return redirect('profile')
    #     else:
    #         p_form = ProfileUpdateForm(instance=request.user)
    #         u_form = UserUpdateForm(instance=request.user.profile)

    #     context = {'p_form': p_form, 'u_form': u_form}
    #     return render(request, 'profile.html', context)
    # def profile_update(self, request):
    #     p_form = ProfileUpdateForm(
    #         request.POST)
    #     u_form = UserUpdateForm(request.POST)

    #     if p_form.is_valid() and u_form.is_valid():
    #         u_form.save()
    #         p_form.save()

    #         return redirect("profile")
    #     else:
    #         p_form = ProfileUpdateForm()
    #         u_form = UserUpdateForm()

    #     context = {"user_update_form": u_form,
    #                "profile_update_form": p_form}
    #     return render(request, "profile.html", context)


# class ProfileUpdate(UpdateView):
#     model = Profile
#     fields = ['current_city', 'image', 'first_name', 'last_name']

#     def get_context_data(self, **kwargs):
#         context = super().get_context_data(**kwargs)
#         context['user_update_form'] = UserUpdateForm()
#         context['profile_update_form'] = ProfileUpdateForm()
#         return context


# class ArtistUpdate(UpdateView):
#     model = Artist
#     fields = ['name', 'img', 'bio', 'verified_artist']
#     template_name = 'artist_update.html'

#     def get_success_url(self):
#         # go to /artists/pk
#         return reverse("artist_detail", kwargs={'pk': self.object.pk})

class About(TemplateView):
    template_name = "about.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['login_form'] = AuthenticationForm()
        context['signup_form'] = UserCreationForm()
        return context


class PostDetail(TemplateView):
    template_name = "post_detail.html"


""" class UserCreationForm(UserCreationForm):
    email = forms.EmailField(required=True, label='Email')

    class Meta:
        model = User
        fields = ("username", "first_name", "last_name", "email", "password1", "password2")

    def save(self, commit=True):
        user = super(UserCreationForm, self).save(commit=False)
        user.email = self.cleaned_data["email"]
        if commit:
            user.save()
        return user """
