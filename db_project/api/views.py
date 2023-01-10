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

<<<<<<< Updated upstream
=======
def list_of_products(request):
    cursor = connection.cursor()
    cursor.execute('Select concat(b.title," Code ",a.Id) as list_doreh from tbl_doreh a left join tbl_reshteh b on a.id_reshteh = b.Id;')
    projects = cursor.fetchall()
    cursor.execute('''SHOW columns FROM tbl_doreh;''')
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
    txt1 = "<i class='fa fa-user' aria-hidden='true'></i> " + "جست و جو کاربر";

    html = '''
       <div class ='forms01 forms mnforms'>
             <div class ='arrow-header'>
                 <span class ='before-h'>" + txt1 + @"</span>
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
>>>>>>> Stashed changes
