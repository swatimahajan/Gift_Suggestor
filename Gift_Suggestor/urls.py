from django.conf.urls import patterns, include, url
from django.contrib import admin

urlpatterns = [
    # Examples:
    # url(r'^$', 'mysite2.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    url(r'^Gift_Suggestor/',include('suggestor.urls')),
    url(r'^admin/', include(admin.site.urls)),
    ]