from django.shortcuts import render,redirect
from django.http import HttpResponse
from .models import Producto
from .forms import productoform

# Create your views here.
def inicio(request):
    return render (request, "inicio.html")

def nosotros (request):
    return render (request, "nosotros.html")

def producto (request):
    Productos=Producto.objects.all()
    return render (request, "index.html",{'Productos':Productos})

def crear (request):
    formulario=productoform(request.POST or None, request.FILES or None)
    if formulario.is_valid():
        formulario.save()
        return redirect("producto")
    return render (request, "crear.html",{'formulario':formulario})


def editar (request,id_producto):
    producto=Producto.objects.get(id_producto=id_producto)
    formulario=productoform(request.POST or None, request.FILES or None,instance=producto)
    if formulario.is_valid() and request.POST:
        formulario.save()
        return redirect("producto")
    return render (request, "editar.html" , {'formulario':formulario})

def eliminar (request,id_producto):
    producto=Producto.objects.get(id_producto=id_producto)
    producto.delete()
    return redirect("producto")