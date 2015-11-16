from django import forms
from suggestor.models import Recipient,Age_Group,Occassion


class selectform(forms.Form):
	relation_list = Recipient.objects.values_list('relation')
	
	relation_choices= [('', '----------')] + [(id, id) for id in relation_list]
	age_choices = [('0', '-----')]
	ocassion_choices = [('0', '-----')]

	relation = forms.ChoiceField(relation_choices,required=True, widget=forms.Select(attrs={'required':'required'}))
	age = forms.ChoiceField(age_choices,required=True, widget=forms.Select(attrs={'required':'required'}))
	occassion = forms.ChoiceField(ocassion_choices, required= True, widget=forms.Select(attrs={'required':'required'}))