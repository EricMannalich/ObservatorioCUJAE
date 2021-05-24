"""
Definition of models.
"""

from django.db import models
from django.contrib.auth.models import User

# Create your models here.

class Documento(models.Model):
    IDIOMA = (
        ('CA', 'Catalan'),
        ('CE', 'Checo'),
        ('DA', 'Danés'),
        ('DE', 'Alemán'),
        ('EN', 'Ingles'),
        ('ES', 'Español'),
        ('FR', 'Francés'),
        ('HI', 'Hindi'),
        ('JA', 'Japonés'),
        ('PT', 'Portugués'),
        ('RU', 'Ruso'),
        ('ZH', 'Chino')
        )
    TEMA = (
        ('Info', 'Informática'),
        ('Tele', 'Telecomunicaciones')
        )
    titulo=models.CharField(max_length=127)
    resumen=models.TextField(blank=True, null=True)
    fecha=models.DateField(blank=True, null=True)
    idioma=models.CharField(max_length=2, choices=IDIOMA, blank=True, null=True)
    pais=models.CharField(max_length=63, blank=True, null=True)
    link=models.URLField(blank=True, null=True)
    tema=models.CharField(max_length=4, choices=TEMA, blank=True, null=True)

    def __str__(self):
        return self.titulo

class Persona(models.Model):
    primer_nombre=models.CharField(max_length=30, blank=True, null=True)
    segundo_nombbre=models.CharField(max_length=30, blank=True, null=True)
    primer_apellido=models.CharField(max_length=30, blank=True, null=True)
    segundo_apellido=models.CharField(max_length=30, blank=True, null=True)
    sexo=models.BooleanField(verbose_name="Es homre?")
    fecha_nacimiento=models.DateField(blank=True, null=True)
    
    def __str__(self):
        return '%s %s' % (self.primer_nombre, self.primer_apellido)
    

class Autor_Tutor(models.Model):
    PARTICIPACION = (
        ('P', 'Autor principal'),
        ('S', 'Autor secundario'),
        ('T', 'Tutor')
        )
    documento=models.ForeignKey(Documento, on_delete=models.CASCADE)
    persona=models.ForeignKey(Persona, on_delete=models.CASCADE)
    participacion=models.CharField(max_length=1, choices=PARTICIPACION, blank=True, null=True)
    
    def __str__(self):
        return '%s %s' % (self.persona, self.documento)

class Usuario_Estendido(models.Model):
    NIVEL_ACADEMICO = (
        ('0', 'Ninguno'),
        ('1', 'Primaria'),
        ('2', 'Secundaria'),
        ('3', 'Técnico medio'),
        ('4', 'Pre universitario'),
        ('5', 'Universitario'),
        ('6', 'Maestría'),
        ('7', 'Doctorado')
        )
    usuario_basico=models.OneToOneField(User, on_delete=models.CASCADE)
    persona=models.OneToOneField(Persona, on_delete=models.CASCADE)
    pais_origen=models.CharField(max_length=30, blank=True, null=True)
    pais_actual=models.CharField(max_length=30, blank=True, null=True)
    notificacion_correo=models.BooleanField()
    nivel_academico=models.CharField(max_length=1, choices=NIVEL_ACADEMICO, blank=True, null=True)
    
    def __str__(self):
        return '%s' % (self.persona)
    
class Amigo(models.Model):
    usuario=models.ForeignKey(Usuario_Estendido, on_delete=models.CASCADE)
    persona=models.ForeignKey(Persona, on_delete=models.CASCADE)
    nivel_amistad=models.IntegerField(blank=True, null=True)

    def __str__(self):
        return '%s %s %s' % (self.usuario, self.persona, self.nivel_amistad)

class Carrera(models.Model):
    nombre_carrera=models.CharField(max_length=127)

    def __str__(self):
        return '%s' % (self.nombre_carrera)

class Usuario_Carrera(models.Model):
    usuario=models.ForeignKey(Usuario_Estendido, on_delete=models.CASCADE)
    carrera=models.ForeignKey(Carrera, on_delete=models.CASCADE)
    anno=models.IntegerField()
    completado=models.BooleanField()
    maestria=models.BooleanField()
    titulo_maestria=models.CharField(max_length=255, blank=True, null=True)
    doctorado=models.BooleanField()
    titulo_doctorado=models.CharField(max_length=255, blank=True, null=True)

    def __str__(self):
        return '%s %s' % (self.usuario, self.carrera)

class Trabajo(models.Model):
    nombre_centro=models.CharField(max_length=127)

    def __str__(self):
        return '%s' % (self. nombre_centro)

class Usuario_Trabajo(models.Model):
    usuario=models.ForeignKey(Usuario_Estendido, on_delete=models.CASCADE)
    trabajo=models.ForeignKey(Trabajo, on_delete=models.CASCADE)
    cargo=models.CharField(max_length=127, blank=True, null=True)
    especialidad=models.CharField(max_length=127, blank=True, null=True)
    
    def __str__(self):
        return '%s %s' % (self.usuario, self.trabajo)