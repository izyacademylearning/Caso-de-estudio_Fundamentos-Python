from dataclasses import fields
from socket import fromshare
from django import forms

from .models import Producto

class productoform(forms.ModelForm):
    class Meta:
        model= Producto
        fields= "__all__"
