from django.db import models


class CustomUsers(models.Model):
    username = models.CharField(max_length=150, null=True, blank=True)
    first_name = models.CharField(max_length=150, null=True, blank=True)
    last_name = models.CharField(max_length=150, null=True, blank=True)
    password = models.CharField(max_length=50, null=True, blank=True)
    ssid = models.CharField(max_length=10, null=True, blank=True)
    phone_number = models.CharField(max_length=11, null=True, blank=True)

    def __str__(self):
        return self.username
