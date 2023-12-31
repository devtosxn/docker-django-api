from django.contrib import admin
from django.urls import path, include
from drf_yasg import openapi
from drf_yasg.views import get_schema_view
from rest_framework import permissions

schema_view = get_schema_view(
    openapi.Info(
        title="Quotes API",
        default_version="v1",
        description="",
    ),
    public=True,
    permission_classes=(permissions.AllowAny,),
    url=None,
)


urlpatterns = [
    path(
        "",
        schema_view.with_ui("swagger", cache_timeout=0),
        name="swagger-schema-ui",
    ),
    path("admin/", admin.site.urls),
    path("quotes/", include("quotes.urls")),
]
