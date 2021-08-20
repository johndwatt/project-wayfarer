from django.urls import path
from .views import Home, About, PostDetail, ProfileDetail

urlpatterns = [
    path('', Home.as_view(), name="home"),
    path('profile/<int:pk>/', ProfileDetail.as_view(), name="profile"),
    path('profile/<int:pk>/update/',
         ProfileDetail.as_view(), name="profile_update"),
    path('about/', About.as_view(), name="about"),
    path('accounts/signup/', Home.as_view(), name="signup"),
    path('post/<int:pk>', PostDetail.as_view(), name="post-detail"),
]
