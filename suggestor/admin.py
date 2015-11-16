from django.contrib import admin
from suggestor.models import Recipient, Age_Group, Occassion

# Register your models here.
class RecipientAdmin(admin.ModelAdmin):
	list_display = ('rp_id' , 'relation')

class Age_GroupAdmin(admin.ModelAdmin):
	list_display = ('age_id', 'age_interval')

class OccassionAdmin(admin.ModelAdmin):
	list_display = ('occ_id' , 'occassion_name')

admin.site.register(Recipient , RecipientAdmin)
admin.site.register(Age_Group , Age_GroupAdmin)
admin.site.register(Occassion,  OccassionAdmin)