from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from .models import CustomUsers
from django.forms import ModelForm


class CustomUserCreationForm(UserCreationForm):
    class Meta:
        model = User
        fields = ['username', 'password1', 'password2']

    def __init__(self, *args, **kwargs):
        super(CustomUserCreationForm, self).__init__(*args, **kwargs)
        # for field in self.fields:
        #     self.fields[field].widget.attrs.update(
        #         {'class': 'input'}
        #     )
