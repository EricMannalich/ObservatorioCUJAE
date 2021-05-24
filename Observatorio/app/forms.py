"""
Definition of forms.
"""

from django import forms
#from app.models import Documento
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
    IDIOMA = (
        ('ES', 'Español'),
        ('CA', 'Catalan'),
        ('CE', 'Checo'),
        ('DA', 'Danés'),
        ('DE', 'Alemán'),
        ('EN', 'Ingles'),
        ('FR', 'Francés'),
        ('HI', 'Hindi'),
        ('JA', 'Japonés'),
        ('PT', 'Portugués'),
        ('RU', 'Ruso'),
        ('ZH', 'Chino')
        )
    TEMA = (
        ('Todo', 'Todo'),
        ('Info', 'Informática'),
        ('Tele', 'Telecomunicaciones')
        )
    palabra = forms.CharField(max_length = 254, required = False,
                               widget = forms.TextInput({
                                   'class': 'form-control mr-sm-2'}))
    tema_select = forms.ChoiceField(required = False,
                                widget = forms.Select({
                                    'class': 'form-control mr-sm-2'}),
                                choices = TEMA)
    idioma_select = forms.ChoiceField(required = False,
                                widget = forms.Select({
                                    'class': 'form-control mr-sm-2'}),
                                choices = IDIOMA)

