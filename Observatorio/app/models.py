"""
Definition of models.
"""

from django.db import models
from django.contrib.auth.models import User

IDIOMA = (
        ('ES', 'Español'),
        ('EN', 'Ingles'),
        )
# Create your models here.

class Tema(models.Model):
    nombre = models.CharField(max_length=80, unique=True)

    class Meta:
        verbose_name = 'Tema'
        verbose_name_plural = 'Temas'
        ordering = ('nombre',)

    def __str__(self):
        return self.nombre

class Documento(models.Model):
    titulo=models.CharField(max_length=127, db_index=True)
    resumen=models.TextField(blank=True, null=True, db_index=True)
    fecha=models.DateField(blank=True, null=True, db_index=True)
    idioma=models.CharField(max_length=2, choices=IDIOMA, blank=True, null=True, db_index=True)
    pais=models.CharField(max_length=63, blank=True, null=True, db_index=True)
    link=models.URLField(blank=True, null=True)
    tema=models.ForeignKey(Tema, on_delete=models.CASCADE, db_index=True)

    class Meta:
        verbose_name = 'Documento'
        verbose_name_plural = 'Documentos'
        ordering = ('-fecha',)

    def __str__(self):
        return self.titulo

class Persona(models.Model):
    primer_nombre=models.CharField(max_length=30, blank=True, null=True)
    segundo_nombbre=models.CharField(max_length=30, blank=True, null=True)
    primer_apellido=models.CharField(max_length=30, blank=True, null=True)
    segundo_apellido=models.CharField(max_length=30, blank=True, null=True)
    sexo=models.BooleanField(verbose_name="Es homre?")
    fecha_nacimiento=models.DateField(blank=True, null=True)

    class Meta:
        verbose_name = 'Persona'
        verbose_name_plural = 'Personas'
        ordering = ('primer_nombre','primer_apellido','segundo_apellido',)
    
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

    class Meta:
        verbose_name = 'Documento participación'
        verbose_name_plural = 'Documentos participaciones'
    
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

    class Meta:
        verbose_name = 'Nivel académico del usuario'
        verbose_name_plural = 'Niveles académicos de los usuarios'
    
    def __str__(self):
        return '%s' % (self.persona)
    
class Amigo(models.Model):
    usuario=models.ForeignKey(Usuario_Estendido, on_delete=models.CASCADE)
    persona=models.ForeignKey(Persona, on_delete=models.CASCADE)
    nivel_amistad=models.IntegerField(blank=True, null=True)

    class Meta:
        verbose_name = 'Amigo'
        verbose_name_plural = 'Amigos'

    def __str__(self):
        return '%s %s %s' % (self.usuario, self.persona, self.nivel_amistad)

class Carrera(models.Model):
    nombre_carrera=models.CharField(max_length=127)

    class Meta:
        verbose_name = 'Carrera'
        verbose_name_plural = 'Carreras'
        ordering = ('nombre_carrera',)

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

    class Meta:
        verbose_name = 'Carrera del usuario'
        verbose_name_plural = 'Carreras de los usuarios'

    def __str__(self):
        return '%s %s' % (self.usuario, self.carrera)

class Trabajo(models.Model):
    nombre_centro=models.CharField(max_length=127)

    class Meta:
        verbose_name = 'Trabajo'
        verbose_name_plural = 'Trabajos'
        ordering = ('nombre_centro',)

    def __str__(self):
        return '%s' % (self. nombre_centro)

class Usuario_Trabajo(models.Model):
    usuario=models.ForeignKey(Usuario_Estendido, on_delete=models.CASCADE)
    trabajo=models.ForeignKey(Trabajo, on_delete=models.CASCADE)
    cargo=models.CharField(max_length=127, blank=True, null=True)
    especialidad=models.CharField(max_length=127, blank=True, null=True)

    class Meta:
        verbose_name = 'Trabajo del usuario'
        verbose_name_plural = 'Trabajos de los usuarios'
    
    def __str__(self):
        return '%s %s' % (self.usuario, self.trabajo)