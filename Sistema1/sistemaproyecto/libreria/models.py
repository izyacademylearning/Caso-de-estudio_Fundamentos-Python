# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from tabnanny import verbose
from django.db import models


class Cliente(models.Model):
    id_cliente = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=20, blank=True, null=True)
    apellido = models.CharField(max_length=20, blank=True, null=True)
    correo_electronico = models.CharField(max_length=30, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'cliente'


class Factura(models.Model):
    id_usuario = models.CharField(max_length=10, blank=True, null=True)
    id_factura = models.BigIntegerField(primary_key=True)
    id_producto = models.IntegerField(blank=True, null=True)
    id_pedido = models.IntegerField(blank=True, null=True)
    precio = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'factura'


class Pedidos(models.Model):
    id_usuario = models.IntegerField(primary_key=True)
    id_pedido = models.IntegerField(blank=True, null=True)
    id_producto = models.IntegerField(blank=True, null=True)
    nombre_producto = models.CharField(max_length=10, blank=True, null=True)
    precio = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'pedidos'


class Producto(models.Model):
    id_producto = models.IntegerField(primary_key=True, verbose_name="ID Producto")
    precio = models.IntegerField(blank=True, null=True, verbose_name="Precio")
    nombre_producto = models.CharField(max_length=10, blank=True, null=True, verbose_name="Nombre Del Producto")

    class Meta:
        managed = False
        db_table = 'producto'
    
    def __str__(self):
        fila="nombre de producto:"+self.nombre_producto
        return fila

class Usuarios(models.Model):
    id_usuario = models.IntegerField(primary_key=True)
    id_tipo_rol = models.CharField(max_length=15, blank=True, null=True)
    id_estado = models.CharField(max_length=10, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'usuarios'
