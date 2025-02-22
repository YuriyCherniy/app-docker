from django.urls import path

from db_access.views import IndexView


urlpatterns = [
    path('', IndexView.as_view(), name='index')
]
