from django.urls import path
from .views import Home, About, PostDetail, ProfileDetail, ProfileRedirect, CityDetail, CityPostRedirect, PostUpdate

urlpatterns = [
    path('', Home.as_view(), name="home"),
    path('profile/', ProfileRedirect.as_view(), name="profile_redirect"),
    path('profile/<int:pk>/', ProfileDetail.as_view(), name="profile"),
    path('profile/<int:pk>/update/',
         ProfileDetail.as_view(), name="profile_update"),
    path('about/', About.as_view(), name="about"),
    path('accounts/signup/', Home.as_view(), name="signup"),
    path('post/<int:pk>', PostDetail.as_view(), name="post_detail"),
    path('cities/<int:pk>/', CityDetail.as_view(), name="city_detail"),
    path('cities/<int:pk>/post/<int:post_pk>/',
         CityPostRedirect.as_view(), name="city_post_redirect"),
    path('cities/<int:pk>/post/new', CityDetail.as_view(), name="post_new"),
    path('post/<int:pk>/update', PostUpdate.as_view(), name="post_update"),
    path('cities/<int:pk>/post/post_pk/delete',
         CityDetail.as_view(), name="post_delete"),
]
