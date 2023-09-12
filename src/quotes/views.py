from rest_framework import generics
from rest_framework import permissions
from quotes.models import Quote
from quotes.serializer import QuoteSerializer

class QuoteListCreateView(generics.ListCreateAPIView):
    queryset = Quote.objects.all()
    serializer_class = QuoteSerializer
    permission_classes = [permissions.AllowAny]
