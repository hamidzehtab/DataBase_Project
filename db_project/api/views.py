from django.db import connection
from django.shortcuts import render


def get_projects(request):
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM tbl_cart;')
    projects = cursor.fetchall()
    cursor.execute('''SHOW columns FROM project.tbl_cart;''')
<<<<<<< HEAD
    columns = []
    for column in cursor.fetchall():
        columns.append(column[0])

    return render(request, 'clientarea.html', {'columns': columns, 'projects': projects})


def list_of_products(request):
    cursor = connection.cursor()
    cursor.execute(
        'Select concat(b.title," Code ",a.Id) as list_doreh from tbl_doreh a left join tbl_reshteh b on a.id_reshteh = b.Id; ')
    projects = cursor.fetchall()
    cursor.execute('''SHOW columns FROM tbl_doreh;''')
=======
>>>>>>> 5e077d7a8938f3f44b82e64c6297857552f7b35d
    result = []
    columns = []
    for column in cursor.fetchall():
        columns.append(column[0])
    # for project in projects:
    #     new_item = dict()
    #     for i in range(len(columns)):
    #         new_item.update({columns[i]: project[i]})
    #     result.append(new_item)

    return render(request, 'clientarea.html', {'columns': columns, 'projects': projects})

def list_of_products(request):
    cursor = connection.cursor()
    cursor.execute('Select concat(b.title," Code ",a.Id) as list_doreh from tbl_doreh a left join tbl_reshteh b on a.id_reshteh = b.Id; ')
    projects = cursor.fetchall()
    #cursor.execute('''SHOW columns FROM tbl_doreh;''')
    result = []
    columns = []
    for column in cursor.fetchall():
        columns.append(column[0])
    # for project in projects:
    #     new_item = dict()
    #     for i in range(len(columns)):
    #         new_item.update({columns[i]: project[i]})
    #     result.append(new_item)

    return render(request, 'clientarea.html', {'columns': columns, 'projects': projects})


def list_of_products(request):
    cursor = connection.cursor()
    cursor.execute('Select concat(b.title," Code ",a.Id) as list_doreh from tbl_doreh a left join tbl_reshteh b on a.id_reshteh = b.Id;')
    projects = cursor.fetchall()
    cursor.execute('''SHOW columns FROM tbl_doreh;''')

def list_of_users(request):
    cursor = connection.cursor()
    cursor.execute('Select concat(fname," ",lname) as names from tbl_users; ')
    projects = cursor.fetchall()
    #cursor.execute('''SHOW columns FROM tbl_doreh;''')
    result = []
    columns = []
    for column in cursor.fetchall():
        columns.append(column[0])
    # for project in projects:
    #     new_item = dict()
    #     for i in range(len(columns)):
    #         new_item.update({columns[i]: project[i]})
    #     result.append(new_item)

    return render(request, 'clientarea.html', {'columns': columns, 'projects': projects})

def list_of_product_types(request):
    cursor = connection.cursor()
    cursor.execute('Select title from tbl_reshteh; ')
    projects = cursor.fetchall()
    #cursor.execute('''SHOW columns FROM tbl_doreh;''')
    result = []
    columns = []
    for column in cursor.fetchall():
        columns.append(column[0])
    # for project in projects:
    #     new_item = dict()
    #     for i in range(len(columns)):
    #         new_item.update({columns[i]: project[i]})
    #     result.append(new_item)

    return render(request, 'clientarea.html', {'columns': columns, 'projects': projects})

def list_of_orders(request):
    cursor = connection.cursor()
    cursor.execute('Select d.Title,concat(b.fname," ",b.lname) as name,a.date_buy from tbl_buy_doreh a left join tbl_users b on a.id_username = b.username left join tbl_doreh c on a.id_doreh = c.Id left join tbl_reshteh d on d.Id = c.id_reshteh ; ')
    projects = cursor.fetchall()
    #cursor.execute('''SHOW columns FROM tbl_doreh;''')
    result = []
    columns = []
    for column in cursor.fetchall():
        columns.append(column[0])
    # for project in projects:
    #     new_item = dict()
    #     for i in range(len(columns)):
    #         new_item.update({columns[i]: project[i]})
    #     result.append(new_item)

    return render(request, 'clientarea.html', {'columns': columns, 'projects': projects})

def list_of_top_10_ussers_all(request):
    cursor = connection.cursor()
    cursor.execute('Select count(*) as num_buy, a.id_username , concat(b.fname," ",b.lname) as name from tbl_buy_doreh a left join tbl_users b on a.id_username = b.Id group by a.id_username order by count(*) desc Limit 10 ; ')
    projects = cursor.fetchall()
    #cursor.execute('''SHOW columns FROM tbl_doreh;''')
    result = []
    columns = []
    for column in cursor.fetchall():
        columns.append(column[0])
    # for project in projects:
    #     new_item = dict()
    #     for i in range(len(columns)):
    #         new_item.update({columns[i]: project[i]})
    #     result.append(new_item)

    return render(request, 'clientarea.html', {'columns': columns, 'projects': projects})



def change_users():

    html = '''
       <div class ='forms01 forms mnforms'>
             <div class ='arrow-header'>
                 <span class ='before-h'><i class='fa fa-user' aria-hidden='true'></i> " + "جست و جو کاربر</span>
                 <div class ='arrow'></div>
             </div>
             <div class ='inform-div'>
                 <a class ='inform-p before-p'>

                 </a>
             </div>
            <div class='row-modal' style='margin:5px 0;'>
             <div class ='form" + @"' style='display:inline-block;margin-left:2%;'>
                 <input type = 'text' id='inpmod1' onkeyup='search_user_div()' autocomplete='off' required>
                 <label class ='label-name'>
                     <span class ='content-name'>نام کاربری</span>
                 </label>
             </div>
             <div class ='form" + @"' style='display:inline-block;margin-left:2%;'>
                 <input type = 'text' id='inpmod2' onkeyup='search_user_div()' autocomplete='off' required>
                 <label class ='label-name'>
                     <span class ='content-name'>نام</span>
                 </label>
             </div>
            <div class ='form" + @"' style='display:inline-block;margin-left:2%;'>
                 <input type = 'text' id='inpmod3' onkeyup='search_user_div()' autocomplete='off' required>
                 <label class ='label-name'>
                     <span class ='content-name'>نام خانوادگی</span>
                 </label>
             </div>
            <div class ='form" + @"' style='display:inline-block;margin-left:2%;'>
                 <input type = 'number' id='inpmod4' onkeyup='search_user_div()' autocomplete='off' required>
                 <label class ='label-name'>
                     <span class ='content-name'>کد ملی</span>
                 </label>
            </div>
            <div class ='form' style='display:inline-block;margin-left:2%;'>
                 <input type = 'number' id='inpmod5' onkeyup='search_user_div()' autocomplete='off' required>
                 <label class ='label-name'>
                     <span class ='content-name'>شماره تلفن</span>
                 </label>
            </div>
                <div class='select-div' style='margin:0 2px 0 7px;' ><span class='select-span' >''' + "سطح دسترسی" + "</span>" + '''<select class='classic sp-select' id='inpmod6' onchange='search_user_div()' >
                         <option value='0'>...</option>
                         <option value='1'>کاربر</option>
                        <option value='2'>ادمین</option>
                 </select>
                 </div>
              <button class='incomp height' onclick='add_change_user()'>جدید</button>
            </div>
             </br><div id='search_user_div'></div>
             <div class ='forgot-div'>
                 <a class ='forgot-pass' onclick='forgot()'>

                 </a>
             </div>
             
         </div>
        ''';

def list_of_top_10_users_month(request):
    cursor = connection.cursor()
    cursor.execute('Select count(*) as num_buy, a.id_username , concat(b.fname," ",b.lname) as name from tbl_buy_doreh a left join tbl_users b on a.id_username = b.Id where a.date_buy >= DATE(NOW() - INTERVAL 1 Month) group by a.id_username order by count(*) desc Limit 10 ;')
    projects = cursor.fetchall()
    #cursor.execute('''SHOW columns FROM tbl_doreh;''')
    result = []
    columns = []
    for column in cursor.fetchall():
        columns.append(column[0])
    # for project in projects:
    #     new_item = dict()
    #     for i in range(len(columns)):
    #         new_item.update({columns[i]: project[i]})
    #     result.append(new_item)

    return render(request, 'clientarea.html', {'columns': columns, 'projects': projects})
def list_of_top_10_users_week(request):
    cursor = connection.cursor()
    cursor.execute('Select count(*) as num_buy, a.id_username , concat(b.fname," ",b.lname) as name from tbl_buy_doreh a left join tbl_users b on a.id_username = b.Id where a.date_buy >= DATE(NOW() - INTERVAL 7 DAY) group by a.id_username order by count(*) desc Limit 10 ;')
    projects = cursor.fetchall()
    #cursor.execute('''SHOW columns FROM tbl_doreh;''')
    result = []
    columns = []
    for column in cursor.fetchall():
        columns.append(column[0])
    # for project in projects:
    #     new_item = dict()
    #     for i in range(len(columns)):
    #         new_item.update({columns[i]: project[i]})
    #     result.append(new_item)

    return render(request, 'clientarea.html', {'columns': columns, 'projects': projects})

def list_of_top_sold_product_week(request):
    cursor = connection.cursor()
    cursor.execute('Select count(*) as times_bought , c.Title from tbl_buy_doreh a left join tbl_doreh b on a.id_doreh = b.Id left join tbl_reshteh c on c.Id = b.id_reshteh where a.date_buy >= DATE(NOW() - INTERVAL 7 Day) group by a.id_doreh order by count(*) desc;')
    projects = cursor.fetchall()
    #cursor.execute('''SHOW columns FROM tbl_doreh;''')
    result = []
    columns = []
    for column in cursor.fetchall():
        columns.append(column[0])
    # for project in projects:
    #     new_item = dict()
    #     for i in range(len(columns)):
    #         new_item.update({columns[i]: project[i]})
    #     result.append(new_item)

    return render(request, 'clientarea.html', {'columns': columns, 'projects': projects})

def list_of_top_sold_procut_month(request):
    cursor = connection.cursor()
    cursor.execute('Select count(*) as times_bought , c.Title from tbl_buy_doreh a left join tbl_doreh b on a.id_doreh = b.Id left join tbl_reshteh c on c.Id = b.id_reshteh where a.date_buy >= DATE(NOW() - INTERVAL 1 Month) group by a.id_doreh order by count(*) desc; ')
    projects = cursor.fetchall()
    #cursor.execute('''SHOW columns FROM tbl_doreh;''')
    result = []
    columns = []
    for column in cursor.fetchall():
        columns.append(column[0])
    # for project in projects:
    #     new_item = dict()
    #     for i in range(len(columns)):
    #         new_item.update({columns[i]: project[i]})
    #     result.append(new_item)

    return render(request, 'clientarea.html', {'columns': columns, 'projects': projects})

def list_of_special_offers(request):
    cursor = connection.cursor()
    cursor.execute('Select c.title , a.discount2 as off_percentage from tbl_buy_doreh a left join tbl_doreh b on a.id_doreh = b.Id left join tbl_reshteh c on c.Id = b.id_reshteh where a.discount2 >= (a.fee*15/100);')
    projects = cursor.fetchall()
    #cursor.execute('''SHOW columns FROM tbl_doreh;''')
    result = []
    columns = []
    for column in cursor.fetchall():
        columns.append(column[0])
    # for project in projects:
    #     new_item = dict()
    #     for i in range(len(columns)):
    #         new_item.update({columns[i]: project[i]})
    #     result.append(new_item)

    return render(request, 'clientarea.html', {'columns': columns, 'projects': projects})

def list_of_providersof_product_admin(request):
    cursor = connection.cursor()
    cursor.execute('Select concat(a.Id," name ",c.title," offered by ",b.name) as offerd_by from tbl_doreh a left join tbl_institute b on a.Id = b.id_doreh left join tbl_reshteh c on a.id_reshteh = c.Title;')
    projects = cursor.fetchall()
    #cursor.execute('''SHOW columns FROM tbl_doreh;''')
    result = []
    columns = []
    for column in cursor.fetchall():
        columns.append(column[0])
    # for project in projects:
    #     new_item = dict()
    #     for i in range(len(columns)):
    #         new_item.update({columns[i]: project[i]})
    #     result.append(new_item)

    return render(request, 'clientarea.html', {'columns': columns, 'projects': projects})

def list_of_providersof_product_admin_2(request):
    cursor = connection.cursor()
    cursor.execute('Select concat(a.Id," name ",c.title," offered by ",b.name) as offerd_by from tbl_institute b left join tbl_doreh a on a.Id = b.id_doreh left join tbl_reshteh c on a.id_reshteh = c.Title where c.Id = '';')
    projects = cursor.fetchall()
    #cursor.execute('''SHOW columns FROM tbl_doreh;''')
    result = []
    columns = []
    for column in cursor.fetchall():
        columns.append(column[0])
    # for project in projects:
    #     new_item = dict()
    #     for i in range(len(columns)):
    #         new_item.update({columns[i]: project[i]})
    #     result.append(new_item)

    return render(request, 'clientarea.html', {'columns': columns, 'projects': projects})

def list_of_cheapest_providerof_products_admin(request):
    cursor = connection.cursor()
    cursor.execute('Select concat(a.Id," name ",c.title," offered by ",b.name," for the cheapest price") as offerd_by from tbl_institute b left join tbl_doreh a on a.Id = b.id_doreh left join tbl_reshteh c on a.id_reshteh = c.Title where c.Id = '' order by a.fee desc LIMIT 1;')
    projects = cursor.fetchall()
    #cursor.execute('''SHOW columns FROM tbl_doreh;''')
    result = []
    columns = []
    for column in cursor.fetchall():
        columns.append(column[0])
    # for project in projects:
    #     new_item = dict()
    #     for i in range(len(columns)):
    #         new_item.update({columns[i]: project[i]})
    #     result.append(new_item)

    return render(request, 'clientarea.html', {'columns': columns, 'projects': projects})

