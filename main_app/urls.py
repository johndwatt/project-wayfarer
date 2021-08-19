from django.urls import path
from .views import Home, Profile, About, PostDetail

urlpatterns = [
    path('', Home.as_view(), name="home"),
    path('profile/', Profile.as_view(), name="profile"),
    path('about/', About.as_view(), name="about"),
    path('accounts/signup/', Home.as_view(), name="signup"),
    path('post/<int:pk>', PostDetail.as_view(), name="post-detail"),
]