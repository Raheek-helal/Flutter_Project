from django.shortcuts import render
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework import status
from rest_framework.views import APIView
from django.http import Http404
from django.http import JsonResponse

from .models import *
from .serializers import *
# Create your views here.


@api_view(['GET','Post'])
def Lawyer (request):     # for all users
    if request.method == 'GET':
        users = Lawyer.objects.all() # queury 
        serializer = LawyerSerializers(users, many = True)
        return Response(serializer.data)
    elif request.method == 'Post':
        serializer = LawyerSerializers(data= request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status = status.HTTP_201_CREATED )
        return Response(serializer.data, status= status.HTTP_400_BAD_REQUEST)
    



@api_view(['GET','Post'])
def Courts (request):     # for all users
    if request.method == 'GET':
        users = Courts.objects.all() # queury 
        serializer = CourtsSerializers(users, many = True)
        return Response(serializer.data)
    elif request.method == 'Post':
        serializer = CourtsSerializers(data= request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status = status.HTTP_201_CREATED )
        return Response(serializer.data, status= status.HTTP_400_BAD_REQUEST)


@api_view(['GET','Post'])
def Cases (request):     # for all users
    if request.method == 'GET':
        users = Cases.objects.all() # queury 
        serializer = CasesSerializers(users, many = True)
        return Response(serializer.data)
    elif request.method == 'Post':
        serializer = CasesSerializers(data= request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status = status.HTTP_201_CREATED )
        return Response(serializer.data, status= status.HTTP_400_BAD_REQUEST)


@api_view(['GET','Post'])
def Post (request):     # for all users
    if request.method == 'GET':
        users = Post.objects.all() # queury 
        serializer = PostSerializers(users, many = True)
        return Response(serializer.data)
    elif request.method == 'Post':
        serializer = PostSerializers(data= request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status = status.HTTP_201_CREATED )
        return Response(serializer.data, status= status.HTTP_400_BAD_REQUEST)

