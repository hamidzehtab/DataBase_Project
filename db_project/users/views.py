from django.contrib.auth import authenticate, login, logout
from django.shortcuts import render, redirect
from .forms import CustomUserCreationForm


def login_user(request):
    # alert = ''
    if request.user.is_authenticated:
        return redirect('get_cart')
        # hashed_pwd = make_password(request.POST['password'])
        # print(hashed_pwd)
        # cursor = connection.cursor()
        # cursor.execute(f'''SELECT * FROM auth_user
        #  WHERE username="{request.POST['username']}" AND password="{hashed_pwd}"''')
        # print(cursor.fetchall())
    user = authenticate(
        request,
        username=request.POST['username'], password=request.POST['password']
    )
    if user is not None:
        login(request, user)
    else:
        print('wrong password or username !')

    return redirect('get_cart')


def register_user(request):
    # username = request['username']
    # cursor = connection.cursor()
    # cursor.execute(f'''SELECT * FROM auth_user WHERE username="{username}" ''')
    # if cursor != 0:
    #     print('This username already exists!')
    # else:
    # cursor.execute(f'''INSERT INTO auth_user(username, password) VALUES ({username}, {password})''')
    form = CustomUserCreationForm(request.POST)
    if form.is_valid():
        user = form.save(commit=False)
        user.username = user.username.lower()
        user.last_name = '0'
        user.save()
        print('registered')
    return redirect('get_cart')


def logout_user(request):
    logout(request)
    return redirect('index')
