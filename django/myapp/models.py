from django.db import models

# Create your models here.
class Lawyer(models.Model):
    Name      = models.CharField   (max_length=50, unique = True)
    Password  = models.CharField   (max_length=8)
    Gender    = models.CharField   (max_length=6)
    Age       = models.IntegerField()
    Governate = models.TextField   (max_length=50)
    Job_Title = models.CharField   (max_length=10)
    Experience= models.IntegerField()
    Have_your_own_office = models.BooleanField ()
    Card_Image= models.ImageField  (upload_to=None, height_field=20, width_field = 40)
    User_Image= models.ImageField  (upload_to=None, height_field=20, width_field = 20)
    
class Courts(models.Model):
    Court_Type     = models.TextField(max_length=200)
    Court_Covernate= models.TextField(max_length=50)
    Court_Name     = models.CharField(max_length=50)
    
    
class Cases(models.Model):
    Case_Type    = models.CharField   (max_length=50)
    Case_ID      = models.IntegerField()
    Case_Year    = models.IntegerField()
    Claimant_Name= models.CharField   (max_length=50)
    Court_Name   = models.ForeignKey  (Courts, related_name = 'Cases', on_delete=models.CASCADE)    

class Post(models.Model):
    Created_by    = models.ForeignKey   (Lawyer, related_name = 'Post', on_delete=models.CASCADE)
    Created_Time  = models.DateTimeField(auto_now_add=True)
    Task_job_offer= models.TextField    (max_length=200)
    Job_Title     = models.CharField    (max_length=10)