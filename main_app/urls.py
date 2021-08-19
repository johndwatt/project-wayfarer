from django.urls import path
from .views import Home, Profile

urlpatterns = [
    path('', Home.as_view(), name="home"),
    path('profile/', Profile.as_view(), name="profile"),
]