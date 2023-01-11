from django.urls import path
from . import views
from django.conf.urls.static import static
from django.conf import settings

# first name is for route , the second one is for frontend
urlpatterns = [
    path('get_cart', views.get_cart, name='get_cart'),
    path('get_cart', views.get_cart, name='get_cart'),
    path('list_of_products', views.list_of_products, name='list_of_products'),
    path('list_of_users', views.list_of_users, name='list_of_users'),
    path('list_of_product_types', views.list_of_product_types, name='list_of_product_types'),
    path('list_of_orders', views.list_of_orders, name='list_of_orders'),
    path('list_of_top_10_users_all', views.list_of_top_10_users_all, name='list_of_top_10_users_all'),
    path('list_of_top_10_users_month', views.list_of_top_10_users_month, name='list_of_top_10_users_month'),
    path('list_of_top_10_users_week', views.list_of_top_10_users_week, name='list_of_top_10_users_week'),
    path('list_of_top_sold_product_week', views.list_of_top_sold_product_week, name='list_of_top_sold_product_week'),
    path('list_of_top_sold_procut_month', views.list_of_top_sold_procut_month, name='list_of_top_sold_procut_month'),
    path('list_of_special_offers', views.list_of_special_offers, name='list_of_special_offers'),
    path('list_of_providersof_product_admin', views.list_of_providersof_product_admin,
         name='list_of_providersof_product_admin'),
    path('list_of_providersof_product_admin_2', views.list_of_providersof_product_admin_2,
         name='list_of_providersof_product_admin_2'),
    path('list_of_cheapest_providerof_products_admin', views.list_of_cheapest_providerof_products_admin,
         name='list_of_cheapest_providerof_products_admin'),
]

urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
