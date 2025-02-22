from django.views.generic import ListView

from db_access.models import DBAccess


class IndexView(ListView):
    model = DBAccess
    template_name = 'db_access/index.html'
