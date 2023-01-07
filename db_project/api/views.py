from django.db import connection
from django.shortcuts import render


def get_projects(request):
    cursor = connection.cursor()
    cursor.execute('SELECT * FROM project.tbl_factor;')
    projects = cursor.fetchall()
    cursor.execute('''SHOW columns FROM project.tbl_factor;''')
    result = []
    columns = []
    for column in cursor.fetchall():
        columns.append(column[0])
    for project in projects:
        new_item = dict()
        for i in range(len(columns)):
            new_item.update({columns[i]: project[i]})
        result.append(new_item)

    return render(request, 'clientarea.html', {'result': result})
