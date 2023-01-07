from django.db import connection
from django.shortcuts import render


def get_projects(request):
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM tbl_cart;')
    projects = cursor.fetchall()
    cursor.execute('''SHOW columns FROM project.tbl_cart;''')
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

def get_projects2(request):
    cursor = connection.cursor()
    cursor.execute('Select * from tbl_buy_doreh where id_username = 1 order by Id desc limit 10 ;')
    projects = cursor.fetchall()
    cursor.execute('''SHOW columns FROM tbl_buy_doreh;''')
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

