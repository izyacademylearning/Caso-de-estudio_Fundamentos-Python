from tkinter import Tk, Button, Frame
import tkinter as tk 
from tkinter import *
from tkinter import messagebox
import mysql.connector 


class cliente:
    def __init__(self):
        self.db_name = mysql.connector.connect(host ='127.0.0.1', user='root', passwd='', database='supermercado')
        self.cursor= self.db_name.cursor()
        self.ventana= Tk()
        self.ventana.title('Registro para clientes')
        self.ventana.geometry('500x600')
        


#Frame1 contiene el boton de nuevo y ademas el regristro de clientes 
        Frame1 = Frame(self.ventana)
        Frame1.pack ()
#Boton de nuevo
        nuevoButton = Button(Frame1, text= "Crear nuevo cliente")
        nuevoButton.pack()
        
#registro
        recuadro = LabelFrame(self.ventana, text ='Crear usuario')
        recuadro.pack()
        
        self.id_cliente=StringVar()
        self.nombres=StringVar()
        self.apellidos=StringVar()
        self.correo_electronico=StringVar()
        


        Label1 = Label(recuadro, text ='ID Cliente', background="Orange",width=80).pack()
        Label11= Entry(recuadro,width=20,textvariable=self.id_cliente)
        Label11.pack()
        
        
        Label2 = Label (recuadro, text ='Nombres', background="Orange",width=80).pack()
        Label22 = Entry (recuadro,textvariable=self.nombres)
        Label22.pack()
        
        Label3 = Label (recuadro, text ='Apellidos', background="Orange",width=80).pack()
        Label33 = Entry (recuadro,textvariable=self.apellidos)
        Label33.pack()
        
        Label4 = Label (recuadro, text ='Correo Electronico', background="Orange",width=80).pack()
        Label44 = Entry (recuadro,textvariable=self.correo_electronico)
        Label44.pack()
      
        #Frame 2 contiene los botones de guardar o cancelar 
        Frame2 = Frame (self.ventana)
        Frame2.pack()

        #boton de guardar  cancelar y eliminar
        GuardarButton = Button(Frame2, text= "Crear usuario",command=self.insertar)
        GuardarButton.grid(row=0, column=0)

        CancelarButton = Button(Frame2, text= "Cancelar", command=self.borrar)
        CancelarButton.grid(row=0,column=1)#relwidht=.25,reldheight=.9)
        
        self.EliminarButton = Button(Frame2, text= "Eliminar usuario",command=self.Eliminar2)
        self.EliminarButton.grid(row=0, column=2)

        self.actualizarButton = Button(Frame2, text="Actualizar usuario",command=self.actualizar)
        self.actualizarButton.grid(row=0, column=3)
        self.ventana.mainloop()

        #funciones de los botones
    def exito(self):
        print("Su registro se ha generado con exito")
        messagebox.showinfo("Advertencia","Su registro se ha generado con exito")

    def eliminar(self):
        print("Se ha eliminado con exito")
        messagebox.showinfo("Advertencia","Se ha eliminado con exito sus repuestas")
        #funciones 
    def insertar (self):
        sql= 'insert into  cliente (id_cliente, nombres, apellidos, correo_electronico) values({},"{}","{}","{}")'.format(self.id_cliente.get(),self.nombres.get(), self.apellidos.get(),self.correo_electronico.get())
        self.cursor.execute(sql)

        self.db_name.commit()
        messagebox.showinfo("Advertencia","Su registro se ha generado con exito")
        self.id_cliente.set("")
        self.nombres.set("")
        self.apellidos.set("")
        self.correo_electronico.set("")
       

    def borrar(self):
        self.id_cliente.set("")
        self.nombres.set("")
        self.apellidos.set("")
        self.correo_electronico.set("")
        self.eliminar()

    def Eliminar2(self):

        try:
            
            sql1=('delete from cliente where id_cliente= {}'.format(self.id_cliente.get()))
            self.cursor.execute(sql1)
            self.db_name.commit()
            messagebox.showinfo("Advertencia","Su registro se ha eliminado con exito")
            self.id_cliente.set("")
            self.nombre.set("")
            self.apellido.set("")
            self.correo_electronico.set("")
           
        except:
            messagebox.showinfo("Advertencia","El registro no existe")

    def actualizar(self):
        sql3=('update cliente set id_cliente={}, nombres="{}", apellidos="{}", correo_electronico="{}" where id_cliente={}'.format(self.id_cliente.get(),self.nombres.get(),self.apellidos.get(),self.correo_electronico.get(),self.id_cliente.get()))
        self.cursor.execute(sql3)
        self.db_name.commit()
        messagebox.showinfo("Advertencia","Su registro se ha actualizado con exito")
        self.id_cliente.set("")
        self.nombres.set("")
        self.apellidos.set("")
        self.correo_electronico.set("")
    
cliente1 = cliente()




