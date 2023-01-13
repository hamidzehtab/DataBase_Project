from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from .models import CustomUsers
from django.forms.forms import Form
from django import forms


class CustomUserCreationForm(UserCreationForm):
    class Meta:
        model = User
        fields = ['email', 'username', 'password1', 'password2']

    def __init__(self, *args, **kwargs):
        super(CustomUserCreationForm, self).__init__(*args, **kwargs)
        # for field in self.fields:
        #     self.fields[field].widget.attrs.update(
        #         {'class': 'input'}
        #     )


class CustomAdminCreationForm(Form):
    username = forms.CharField(label='username', max_length=150)
    first_name = forms.CharField(label='first_name', max_length=150)
    last_name = forms.CharField(label='last_name', max_length=150)
    password = forms.CharField(label='password', widget=forms.PasswordInput)
    ssid = forms.CharField(label='ssid', max_length=10)
    phone_number = forms.CharField(label='phone_number', max_length=11)
    level = forms.CharField(label='level', max_length=1)

    def save(self, commit=True):
        user = CustomUsers.objects.create(
            username=self.username,
            first_name=self.first_name,
            last_name=self.last_name,
            password=self.password,
            ssid=self.ssid,
            phone_number=self.phone_number,
            level=self.level,
            commit=commit
        )
        return user
