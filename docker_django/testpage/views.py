from django.http import HttpResponse
from django.shortcuts import render

# Create your views here.
def MainView(request):
    return HttpResponse("Jenkins Auto Build #12")
    