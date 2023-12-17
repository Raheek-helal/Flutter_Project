from rest_framework import serializers
from .models import *

class LawyerSerializers(serializers.ModelSerializer):
    class Meta:
        model  = Lawyer
        fields = '__all__'
        
class CourtsSerializers(serializers.ModelSerializer):
    class Meta:
        model  = Courts
        fields = '__all__'
        
class CasesSerializers(serializers.ModelSerializer):
    class Meta:
        model  = Cases
        fields = '__all__'
        
class PostSerializers(serializers.ModelSerializer):
    class Meta:
        model  = Post
        fields = '__all__'