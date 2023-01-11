from django.db import connection
from django.shortcuts import render


def get_cart(request):
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM tbl_cart;')
    items = cursor.fetchall()
    cursor.execute('''SHOW columns FROM tbl_cart;''')
    columns = []
    for column in cursor.fetchall():
        columns.append(column[0])

    return render(request, 'clientarea.html', {'columns': columns, 'items': items})


def list_of_products(request):
    cursor = connection.cursor()
    cursor.execute('''Select concat(b.title," Code ",a.Id) as list_doreh 
    from tbl_doreh a left join tbl_reshteh b on a.id_reshteh = b.Id; ''')
    items = cursor.fetchall()
    return render(request, 'clientarea.html', {'columns': ['list_doreh'], 'items': items})


def list_of_users(request):
    cursor = connection.cursor()
    cursor.execute('Select concat(fname," ",lname) as names from tbl_users; ')
    items = cursor.fetchall()
    return render(request, 'clientarea.html', {'columns': ['names'], 'items': items})


def list_of_product_types(request):
    cursor = connection.cursor()
    cursor.execute('Select title from tbl_reshteh; ')
    items = cursor.fetchall()
    return render(request, 'clientarea.html', {'columns': ['title'], 'items': items})


def list_of_orders(request):
    cursor = connection.cursor()
    cursor.execute(
        '''Select d.Title,concat(b.fname," ",b.lname) as name,a.date_buy
         from tbl_buy_doreh a left join tbl_users b on a.id_username = b.Id left join tbl_doreh c on a.id_doreh = c.Id
          left join tbl_reshteh d on d.Id = c.id_reshteh ; ''')
    items = cursor.fetchall()
    return render(request, 'clientarea.html', {'columns': ['title', 'name', 'date'], 'items': items})


def list_of_top_10_users_all(request):
    cursor = connection.cursor()
    cursor.execute(
        '''Select count(*) as num_buy, a.id_username , concat(b.fname," ",b.lname) as name
         from tbl_buy_doreh a left join tbl_users b on a.id_username = b.Id 
         group by a.id_username order by count(*) desc Limit 10 ; ''')
    items = cursor.fetchall()
    return render(request, 'clientarea.html', {'columns': ['num_buy', 'id_username', 'name'], 'items': items})


def change_users(request):
    return render(request, 'change_users.html', {})


def list_of_top_10_users_month(request):
    cursor = connection.cursor()
    cursor.execute(
        '''Select count(*) as num_buy, a.id_username , concat(b.fname," ",b.lname) as name
         from tbl_buy_doreh a left join tbl_users b on a.id_username = b.Id where a.date_buy >= DATE(NOW() - INTERVAL 1 Month)
          group by a.id_username order by count(*) desc Limit 10 ;''')
    items = cursor.fetchall()
    return render(request, 'clientarea.html', {'columns': ['num_buy', 'id_username', 'name'], 'items': items})


def list_of_top_10_users_week(request):
    cursor = connection.cursor()
    cursor.execute(
        '''Select count(*) as num_buy, a.id_username , concat(b.fname," ",b.lname) as name
         from tbl_buy_doreh a left join tbl_users b on a.id_username = b.Id where a.date_buy >= DATE(NOW() - INTERVAL 7 DAY
          group by a.id_username order by count(*) desc Limit 10 ;''')
    items = cursor.fetchall()
    return render(request, 'clientarea.html', {'columns': ['num_buy', 'id_username', 'name'], 'items': items})


def list_of_top_sold_product_week(request):
    cursor = connection.cursor()
    cursor.execute(
        '''Select count(*) as times_bought , c.Title 
        from tbl_buy_doreh a left join tbl_doreh b on a.id_doreh = b.Id left join tbl_reshteh c on c.Id = b.id_reshteh
         where a.date_buy >= DATE(NOW() - INTERVAL 7 Day) group by a.id_doreh order by count(*) desc;''')
    items = cursor.fetchall()
    return render(request, 'clientarea.html', {'columns': ['times_bought', 'Title'], 'items': items})


def list_of_top_sold_procut_month(request):
    cursor = connection.cursor()
    cursor.execute(
        '''Select count(*) as times_bought , c.Title from tbl_buy_doreh a left join tbl_doreh b on a.id_doreh = b.Id
         left join tbl_reshteh c on c.Id = b.id_reshteh where a.date_buy >= DATE(NOW() - INTERVAL 1 Month)
          group by a.id_doreh order by count(*) desc; ''')
    items = cursor.fetchall()
    return render(request, 'clientarea.html', {'columns': ['times_bought', 'Title'], 'items': items})


def list_of_special_offers(request):
    cursor = connection.cursor()
    cursor.execute(
        '''Select c.title,concat(" code ",b.Id," has ", a.percent_discount, " percent discount") as code_percent 
        from tbl_discount a left join tbl_doreh b on a.specific_doreh = b.Id 
        left join tbl_reshteh c on c.Id = b.id_reshteh where a.percent_discount >= 15 ;''')
    items = cursor.fetchall()
    return render(request, 'clientarea.html', {'columns': ['title', 'off_percentage'], 'items': items})


def list_of_providersof_product_admin(request):
    cursor = connection.cursor()
    cursor.execute(
        '''Select concat(a.Id," name ",c.title," offered by ",b.name) as offerd_by
         from tbl_doreh a left join tbl_institute b on a.Id = b.id_doreh left join tbl_reshteh c on a.id_reshteh = c.Title;''')
    items = cursor.fetchall()
    return render(request, 'clientarea.html', {'columns': ['offerd_by'], 'items': items})


def list_of_providersof_product_admin_2(request):
    cursor = connection.cursor()
    cursor.execute(
        '''Select concat(a.Id," name ",c.title," offered by ",b.name) as offerd_by
         from tbl_institute b left join tbl_doreh a on a.Id = b.id_doreh left join tbl_reshteh c on a.id_reshteh = c.Title
         where c.Id = '';''')
    items = cursor.fetchall()
    return render(request, 'clientarea.html', {'columns': ['offerd_by'], 'items': items})


def list_of_cheapest_providerof_products_admin(request):
    cursor = connection.cursor()
    cursor.execute(
        '''Select concat(a.Id," name ",c.title," offered by ",b.name," for the cheapest price") as offerd_by
         from tbl_institute b left join tbl_doreh a on a.Id = b.id_doreh left join tbl_reshteh c on a.id_reshteh = c.Title
          where c.Id = '' order by a.fee desc LIMIT 1;''')
    items = cursor.fetchall()
    return render(request, 'clientarea.html', {'columns': ['offerd_by'], 'items': items})
