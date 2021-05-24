"""
Definition of views.
"""
import psycopg2
from datetime import datetime
from django.shortcuts import render
from django.http import HttpRequest
from django.contrib.postgres.search import SearchQuery, SearchVector
from app.forms import Form_busqueda_documentos
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
            if temas != 'Todo':
                documentos = documentos.filter(tema__iexact = temas)
            #indice = 0
            #while(indice < len(temas)):
            #    if indice == 0:
            #        temp = documentos.filter(tema__iexact = temas[indice])
            #    else:
            #        temp.aggregate(documentos.filter(tema__iexact = temas[indice]))
            #    indice +=1
            #    if indice == len(temas):
            #        documentos = temp
            
            #if len(temas) >=1:
            #    multi_tema = "'"
            #    multi_tema += "' OR '".join(temas)
            #    multi_tema += "'"
            #    print(multi_tema)
            #    documentos = documentos.annotate(search=SearchVector('tema')).filter(search=SearchQuery(multi_tema))
            criterios = entrada.split()
            for criterio in criterios:
                if criterio.isalnum():
                    if criterio.isdigit():
                        if int(criterio) > 1900 and int(criterio) <= datetime.now().year: 
                            documentos = documentos.filter(fecha__year=criterio)
                    else:
                        documentos = documentos.annotate(search=SearchVector('titulo', 'resumen', 'pais')).filter(search=SearchQuery(criterio))
            
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
            'message':'Buscar documento',
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
            'title':'Contact',
            'message':'Your contact page.',
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
