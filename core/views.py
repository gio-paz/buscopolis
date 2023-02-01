from django.http import HttpResponse
import datetime
from django.template import Template, Context
<<<<<<< HEAD
from django.shortcuts import render
=======
from django.template.loader import get_template
>>>>>>> 6f400cfdcd492fbf2d31c38d1633269ca713b780

def login(request): # Vista login
    #urlcss = './core/plantillas/css/login.css'
    #doc_externo=open('./core/plantillas/login.html')
    #plt=Template(doc_externo.read())
    #doc_externo.close()
    #ctx=Context({"css":urlcss})
    #documento=plt.render(ctx)

    doc_externo=get_template('index.html')
    documento=doc_externo.render({})
    return HttpResponse(documento)

def home(request): # Vista Home

   return render(request, './core/plantillas/test.html')
   #return HttpResponse("listado")