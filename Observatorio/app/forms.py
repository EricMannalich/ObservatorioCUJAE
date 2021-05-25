"""
Definition of forms.
"""

from django import forms
#from datetime import datetime
from app.models import *
from django.contrib.auth.forms import AuthenticationForm
from django.utils.translation import ugettext_lazy as _
#from django.forms.widgets import CheckboxSelectMultiple

class BootstrapAuthenticationForm(AuthenticationForm):
    """Authentication form which uses boostrap CSS."""
    username = forms.CharField(max_length = 254,
                               widget = forms.TextInput({
                                   'class': 'form-control',
                                   'placeholder': 'Usuario'}))
    password = forms.CharField(label=_("Password"),
                               widget=forms.PasswordInput({
                                   'class': 'form-control',
                                   'placeholder':'Contraseña'}))

class Form_busqueda_documentos(forms.Form):
    #day = forms.DateField(initial=datetime.now())
    palabra = forms.CharField(max_length = 254, required = False,
                               widget = forms.TextInput({
                                   'class': 'form-control mr-sm-2'}))
    tema_select = forms.ModelChoiceField(queryset=Tema.objects.all(),
                                         required = False,
                                        widget = forms.Select({
                                            'class': 'form-control mr-sm-2'}))
    idioma_select = forms.ChoiceField(required = False,
                                widget = forms.Select({
                                    'class': 'form-control mr-sm-2'}),
                                choices = IDIOMA)
