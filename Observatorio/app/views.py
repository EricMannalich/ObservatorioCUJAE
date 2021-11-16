"""
Definition of views.
"""
import psycopg2
from datetime import datetime
from django.shortcuts import render
from django.http import HttpRequest
from django.contrib.postgres.search import SearchQuery, SearchVector
from app.forms import *
from app.models import Documento, Persona, Autor_Tutor

def home(request):
    documentos = Documento.objects.all()
    limite = 1
    if request.method=="POST":
        busqueda = Form_busqueda_documentos(request.POST)
        if busqueda.is_valid():
            inf_form = busqueda.cleaned_data
            entrada = inf_form['palabra']

            idiomas = inf_form['idioma_select']
            documentos = documentos.filter(idioma__iexact = idiomas)

            temas = inf_form['tema_select']
            if temas:
                documentos = documentos.filter(tema__nombre = temas)
            if entrada:
                documentos = documentos.annotate(search=SearchVector('titulo','resumen', 'pais', 'fecha__year')).filter(search=SearchQuery(entrada))
    else:
        busqueda = Form_busqueda_documentos()
        entrada = "Todos"
        temas = ''
    
    grupo_documentos = documentos.all()[limite * 50 - 50:limite * 50]
    assert isinstance(request, HttpRequest)
    return render(
        request,
        'app/index.html',
        {
            'title':'Inicio',
            'message':'Buscador',
            'year':datetime.now().year,
            'query':entrada,
            'form':busqueda,
            'grupo_documentos':grupo_documentos,
        }
    )

def contact(request):
    """Renders the contact page."""
    assert isinstance(request, HttpRequest)
    return render(
        request,
        'app/contact.html',
        {
            'title':'Contacto',
            'message':'Página de contacto.',
            'year':datetime.now().year,
        }
    )

def about(request):
    """Renders the about page."""
    assert isinstance(request, HttpRequest)
    return render(
        request,
        'app/about.html',
        {
            'title':'About',
            'message':'Your application description page.',
            'year':datetime.now().year,
        }
    )
