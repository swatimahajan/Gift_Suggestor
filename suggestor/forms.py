from django import forms
from Gift_Suggestor.models import relation,age_interval,occassion_name


class selectform(forms.Form):
	relation_list = relation.objects.values_list('relation_name')
	select_relation = [('', '----------')] + [(id, id) for id in relation_list]
	select_age = [('0', '-----')]
	select_ocassion = [('0', '-----')]

	relation = forms.ChoiceField(select_relation,required=True, widget=forms.Select(attrs={'required':'required'}))
	age = forms.ChoiceField(select_age,required=True, widget=forms.Select(attrs={'required':'required'}))
	occassion = forms.ChoiceField(select_ocassion, required= False, widget=forms.Select(attrs={'required':'required'}))