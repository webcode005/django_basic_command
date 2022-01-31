python -m django startproject mysite

python manage.py runserver

Create a new file views.py inside the project folder where settings.py, urls.py and other files are stored and save the following code in it- 
from django.http import HttpResponse

def hello (request) :
 
    # This will return Hello Django
    # string as HttpResponse
    return HttpResponse("Hello Django")

Open urls.py inside project folder (projectName) and add your entry- 
Import hello function from views.py file. 
 	from projectName.views import hello_geeks


Add an entry in url field inside url patterns-

path('geek/', hello_geek),


### Creating an App in Django :

	python manage.py startapp projectApp

To consider the app in your project you need to specify your project name in INSTALLED_APPS list as follows in settings.py:
	INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'projectApp'
]


Move to projectName-> projectName -> urls.py and add below code in the header
	
	from django.urls import include

    # Enter the app name in following
    # syntax for this to work
    path('', include("projectApp.urls")),
