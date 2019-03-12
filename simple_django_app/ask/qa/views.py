from django.http import HttpResponse

def test(request, *args, **kwargs):
    return HttpResponse("Ok. It's test controller.")

