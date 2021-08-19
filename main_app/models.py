from django.db import models
from django.db.models import CharField, TextField, ForeignKey, DateTimeField, Model
from django.contrib.auth.models import User


class Profile(Model):

    user = models.OneToOneField(User, on_delete=models.CASCADE)
    current_city = CharField(max_length=100, default="NA")
    image = CharField(max_length=500)

    def __str__(self):
        return self.name


class City(Model):
    name = CharField(max_length=100, default="NA")
    country = CharField(max_length=100, default="NA")
    picture = CharField(max_length=500)

    def __str__(self):
        return self.name


class Post(Model):
    title = CharField(max_length=100, default="NA")
    content = TextField(max_length=700)
    city = ForeignKey(City, on_delete=models.CASCADE, related_name='posts')
    created_at = DateTimeField(auto_now_add=True)
    user = ForeignKey(User, on_delete=models.CASCADE, related_name='posts')

    def __str__(self):
        return self.title

    class Meta:
        ordering = ['-created_at']
