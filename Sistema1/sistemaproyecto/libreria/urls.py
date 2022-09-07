from django.urls import path
from . import views
from django.conf import settings
from django.contrib.staticfiles.urls import static

urlpatterns = [
    path("",views.inicio, name="inicio"),
    path("nosotros",views.nosotros, name="nosotros"),
    path("producto",views.producto, name="producto"),
    path("producto/crear",views.crear, name="crear"),
    path("producto/editar",views.editar, name="editar"),
    path("eliminar/<int:id_producto>",views.eliminar, name="eliminar"),
    path("producto/editar/<int:id_producto>",views.editar, name="editar"),
]+ static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
