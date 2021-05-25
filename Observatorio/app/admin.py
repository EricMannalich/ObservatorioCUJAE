from django.contrib import admin
from app.models import *

class Tema_Admin(admin.ModelAdmin):
    search_fields=("nombre",)

class Documento_Admin(admin.ModelAdmin):
    list_display=("titulo","tema", "pais", "idioma")
    list_display_links=("titulo","tema", "pais", "idioma")
    search_fields=("titulo",)
    list_filter=("pais", "idioma", "tema")
    date_hierarchy=("fecha")

class Persona_Admin(admin.ModelAdmin):
    list_display=("primer_nombre","segundo_nombbre", "primer_apellido", "segundo_apellido", "sexo")
    list_display_links=("primer_nombre","segundo_nombbre", "primer_apellido", "segundo_apellido", "sexo")
    search_fields=("primer_nombre","segundo_nombbre", "primer_apellido", "segundo_apellido")
    list_filter=("sexo",)
    date_hierarchy=("fecha_nacimiento")

class Autor_Tutor_Admin(admin.ModelAdmin):
    list_display=("documento","persona", "participacion")
    list_display_links=("documento","persona", "participacion")
    list_filter=("participacion",)

class Usuario_Estendido_Admin(admin.ModelAdmin):
    list_display=("usuario_basico","persona", "pais_actual", "nivel_academico")
    list_display_links=("usuario_basico","persona", "pais_actual", "nivel_academico")
    list_filter=("pais_actual", "nivel_academico")

class Carrera_Admin(admin.ModelAdmin):
    search_fields=("nombre_carrera",)
    
class Usuario_Carrera_Admin(admin.ModelAdmin):
    list_display=("usuario","carrera")
    list_display_links=("usuario","carrera")
    list_filter=("completado", "maestria", "doctorado")
  
class Trabajo_Admin(admin.ModelAdmin):
    search_fields=("nombre_centro",)

class Usuario_Trabajo_Admin(admin.ModelAdmin):
    list_display=("usuario","trabajo", "cargo", "especialidad")
    list_display_links=("usuario","trabajo", "cargo", "especialidad")
    search_fields=("cargo", "especialidad")

admin.site.register(Tema, Tema_Admin)
admin.site.register(Documento, Documento_Admin)
admin.site.register(Persona, Persona_Admin)
admin.site.register(Autor_Tutor, Autor_Tutor_Admin)
admin.site.register(Usuario_Estendido,Usuario_Estendido_Admin)
admin.site.register(Amigo)
admin.site.register(Carrera, Carrera_Admin)
admin.site.register(Usuario_Carrera, Usuario_Carrera_Admin)
admin.site.register(Trabajo, Trabajo_Admin)
admin.site.register(Usuario_Trabajo, Usuario_Trabajo_Admin)
