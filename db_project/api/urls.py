from django.urls import path
from . import views
from django.conf.urls.static import static
from django.conf import settings

# first name is for route , the second one is for frontend
urlpatterns = [
    path('', views.index_page, name='index'),
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
    path('list_of_last_10_orders_of_user', views.list_of_last_10_orders_of_user,name='list_of_last_10_orders_of_user'),
    path('list_of_comments_for_agiven_product', views.list_of_comments_for_agiven_product,name='list_of_comments_for_agiven_product'),
    path('list_of_top3_best_comments_for_agiven_product', views.list_of_top3_best_comments_for_agiven_product,name='list_of_top3_best_comments_for_agiven_product'),
    path('list_of_top3_worst_comments_for_agiven_product', views.list_of_top3_worst_comments_for_agiven_product,name='list_of_top3_worst_comments_for_agiven_product'),
    path('list_of_sale_for_agiven_product_admin', views.list_of_sale_for_agiven_product_admin,name='list_of_sale_for_agiven_product_admin'),
    path('list_of_average_sale_for_store_admin', views.list_of_average_sale_for_store_admin,name='list_of_average_sale_for_store_admin'),
    path('list_of_users_of_givencity_admin', views.list_of_users_of_givencity_admin,name='list_of_users_of_givencity_admin'),
    path('list_of_providers_agiven_city_admin', views.list_of_providers_agiven_city_admin,name='list_of_providers_agiven_city_admin'),
    path('updating_products_by_admin', views.updating_products_by_admin,name='updating_products_by_admin'),
    path('deleting_products_by_admin', views.deleting_products_by_admin,name='deleting_products_by_admin'),
    path('creating_products_by_admin', views.creating_products_by_admin,name='creating_products_by_admin'),
    # path('change_users/')

]

urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
