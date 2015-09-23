from django.db import models

# Create your models here.
class Recipient(models.Model):
	rp_id = models.AutoField(primary_key = True)
	relation = models.CharField(max_length = 20)

class Age_Group(models.Model):
	age_id = models.AutoField(primary_key = True)
	age_interval = models.CharField(max_length = 10)

class Occassion(models.Model):
	occ_id = models.AutoField(primary_key = True)
	occassion_name = models.CharField(max_length = 20) 