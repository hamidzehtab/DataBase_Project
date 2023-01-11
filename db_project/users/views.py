from django.contrib.auth import authenticate, login, logout
from django.shortcuts import render, redirect
from .forms import CustomUserCreationForm


def login_user(request):
    alert = ''
    # if request.user.is_authenticated:
    #     return redirect('account')  badan behem bego ino dorost konim
    # age login karde bashe baresh migardonim be safhe main
    if request.method == 'POST':
        user = authenticate(
            request,
            username=request.POST['username'], password=request.POST['password']
        )
        if user is not None:
            login(request, user)
            return redirect('a')

        print('wrong password or username !')
        alert = 'wrong password or username !'
    return render(request, 'login.html', {'alert': alert})


def register_user(request):
    alert = ''
    if request.user.is_authenticated:
        return render(request, 'api.html', {'context': None})
    if request.method == 'POST':
        form = CustomUserCreationForm(request.POST)
        if form.is_valid():
            user = form.save(commit=False)
            user.username = user.username.lower()
            user.save()
            login(request, user)
            return render(request, 'clientarea.html', {'context': None})
        else:
            print('something went wrong!')
            alert = """something went wrong! because one of this reasons:
                        Your password can't be too similar to your other personal information.
                        Your password must contain at least 8 characters.
                        Your password can't be commonly used password.
                        Your password can't be entirely numeric.
                        Your password and password confirmation don't match.
                    """
    form = CustomUserCreationForm()
    context = {'form': form, 'alert': alert}
    return render(request, 'signup.html', context)


def logout_user(request):
    logout(request)
    return redirect('get_cart')
