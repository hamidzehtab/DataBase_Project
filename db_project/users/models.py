from django.db import models


class CustomUsers(models.Model):
    username = models.CharField(max_length=150, null=True, blank=True)
    first_name = models.CharField(max_length=150, null=True, blank=True)
    last_name = models.CharField(max_length=150, null=True, blank=True)
    password = models.CharField(max_length=50, null=True, blank=True)
    ssid = models.CharField(max_length=10, null=True, blank=True)
    phone_number = models.CharField(max_length=11, null=True, blank=True)

    admin = '2'
    user = '1'
    no_name = '0'

    LEVEL_CHOICES = [
        (admin, 'admin'),
        (user, 'user'),
        (no_name, 'no_name'),
    ]
    level = models.CharField(
        max_length=1,
        choices=LEVEL_CHOICES,
        default=user,
    )

    def __str__(self):
        return self.username
