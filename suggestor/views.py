from django.shortcuts import render
from django.http import HttpResponse
from suggestor.forms import selectform

# Create your views here.
def index(request):
    return render(request , 'suggestor/index.html')
    #return HttpResponse(template.render(context))
def filter(request):
	form = selectform()
	return render(request, 'suggestor/filter.html', {'form': form})