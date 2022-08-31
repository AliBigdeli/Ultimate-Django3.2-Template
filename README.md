<h1 align="center">Ultimate Django3.2 Template</h1>
<h3 align="center">Just a big starting point for any backend project</h3>
<p align="center">
<a href="https://www.python.org" target="_blank"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/python/python-original.svg" alt="python" width="40" height="40"/> </a>
<a href="https://www.djangoproject.com/" target="_blank"> <img src="https://user-images.githubusercontent.com/29748439/177030588-a1916efd-384b-439a-9b30-24dd24dd48b6.png" alt="django" width="60" height="40"/> </a> 
<a href="https://www.docker.com/" target="_blank"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/docker/docker-original-wordmark.svg" alt="docker" width="40" height="40"/> </a>
<a href="https://www.postgresql.org" target="_blank"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/postgresql/postgresql-original-wordmark.svg" alt="postgresql" width="40" height="40"/> </a>
<a href="https://www.nginx.com" target="_blank"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/nginx/nginx-original.svg" alt="nginx" width="40" height="40"/> </a>
<a href="https://git-scm.com/" target="_blank"> <img src="https://www.vectorlogo.zone/logos/git-scm/git-scm-icon.svg" alt="git" width="40" height="40"/> </a>
</p>

[![Build Status](https://app.travis-ci.com/AliBigdeli/Ultimate-Django3.2-Template.svg?token=vtyMEBvqfUPy2NHM9icv&branch=main)](https://app.travis-ci.com/AliBigdeli/Ultimate-Django3.2-Template)
[![Code Style Black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/ambv/black)



    
# Guideline
- [Goal](#goal)
- [Repo Features](#repo-features)
- [Configurations](#configurations)
- [Development usage](#development-usage)
- [Testing usage](#testing-usage)
- [Production usage](#production-usage)
- [License](#license)
- [Todo](#todo)
- [Bugs](#bugs)

# Goal
This project main goal is to provide a way to deploy django applications by using docker along with nginx, gunicorn and letsencrypt and much more features a backed developer needs.

<img src="https://user-images.githubusercontent.com/29748439/187756542-9036d351-3d77-4c61-8a99-6b46c3701a90.png" alt="video" style="max-width:1280" />



# Repo Features
<ul>
  <li>
       <strong>Latest LTS Django3.2</strong>        
  </li>
 <p>Latest LTS included 3.2.x and needed requirements</p>
 <li>
       <strong>Git</strong>        
  </li>
  <p>python gitignore and README with license</p>
 <li>
       <strong>Docker File</strong>        
  </li>
  <p>Latest Python image dockerfile prod/dev and dockerignore</p>
  
 <li>
       <strong>Docker Compose</strong>        
  </li>
  <p>Docker compose prod/dev and minimum setup for django and db included,with volumes and network</p>
  
 <li>
       <strong>Nginx + Gunicorn</strong>        
  </li>
  <p>included nginx setup with gunicorn as serving service and file configs for production</p>
 
 <li>
       <strong>Django env</strong>        
  </li>
  <p>enviroment sample file and setup</p>
 
 <li><strong>Hints and Files</strong></li>
  <p>Sample files and hints all over the template for giving more pace</p>
 
 <li><strong>Github Actions</strong></li>
  <p>Pre Configurations for CI/CD in github actions. plus two step jobs for testing and deploying on vps with docker</p>
 

 <li><strong>Black and Flake8</strong></li>
  <p>Included Pep8 and Flake8 configuration file for test purposes.Reformating the codes and bring the best out of it.</p>

  <li><strong>Django Rest Framework</strong></li>
  <p>Included DRF package and all its dependencies along side of cors headers. plus simplejwt and token authentication for accounting.</p>

  <li><strong>Swagger and Redoc</strong></li>
  <p>Allowing the urls to include rest api documentations</p>

 <li>
       <strong>Preconfigured</strong>        
  </li>
  <p>Preconfigured settings.py for email,db,static,media etc.</p>
</ul>

# Configurations
<ul>
  <li>
       <strong>Static & Media Directories</strong>        
  </li>
 <p>STATIC_ROOT and STATIC_URL and same for media configurations with STATICFILES_DIRS</p>
 <li>
       <strong>Template Directories</strong>        
  </li>
  <p>Genral templates directory for root</p>
 <li>
       <strong>Site Framework and Sitemaps + robots</strong>        
  </li>
  <p>Siteframework as in site_id configs with robots.txt and sample sitemaps</p>
  
 <li>
       <strong>Database Configs</strong>        
  </li>
  <p>Database configuration for production with postgresql and volume directory in data</p>
  
 <li>
       <strong>Email Configs</strong>        
  </li>
  <p>Email configurations for dev and prod as in env file</p>
 
 <li>
       <strong>Message Configs</strong>        
  </li>
  <p>Message and warnings configuration for notification handelings</p>
 <li><strong>Hints and Files</strong></li>
  <p>Sample files and hints all over the template for more giving more pace</p>
 
 <li>
       <strong>TestCase</strong>        
  </li>
  <p>Hints for TestCases and sample files for an app</p>
  <li>
       <strong>Security</strong>        
  </li>
  <p>Security tags for https and redirections,HSTS,Cookie and other headers</p>
</ul>

# Development usage
You'll need to have [Docker installed](https://docs.docker.com/get-docker/).
It's available on Windows, macOS and most distros of Linux. 

If you're using Windows, it will be expected that you're following along inside
of [WSL or WSL
2](https://nickjanetakis.com/blog/a-linux-dev-environment-on-windows-with-wsl-2-docker-desktop-and-more).

That's because we're going to be running shell commands. You can always modify
these commands for PowerShell if you want.


#### Clone this repo anywhere you want and move into the directory:

```sh
git clone https://github.com/AliBigdeli/Ultimate-Django3.2-Template.git
```

#### Enviroment Varibales are included in docker-compose.yml file for debugging mode and you are free to change commands inside:

```docker
services:
  backend:
    command: sh -c "python manage.py makemigrations && python manage.py migrate && python manage.py runserver 0.0.0.0:8000"
    environment:      
      - DEBUG=True
```

#### Build everything:

*The first time you run this it's going to take 5-10 minutes depending on your
internet connection speed and computer's hardware specs. That's because it's
going to download a few Docker images and build the Python + requirements dependencies.*

```sh
docker compose up --build
```

Now that everything is built and running we can treat it like any other Django
app.

#### Note:

If you receive an error about a port being in use? Chances are it's because
something on your machine is already running on port 8000. then you have to change the docker-compose.yml file according to your needs.
#### Check it out in a browser:

Visit <http://localhost:8000> in your favorite browser.

# Testing Usage
#### running all at the same time:
```sh
docker compose run --rm backend sh -c " black -l 79 && flake8 && python manage.py test" -v core:/app
```
or
```sh
docker compose exec backend sh -c sh -c " black -l 79 && flake8 && python manage.py test" 
```

# Stage usage
In this phase of the project you can launch the service either in your pc/laptop to use as local host or you can setup on a vps to access through ip or even the domain which is dedicated to it. 
but before that dont forget to create .env files in the envs directory for stage mode which contains backend,nginx and the db.
after creating the files all you need to do to build the project is to run the command bellow:
```bash
docker compose -f docker-compose-stage.yml up --build
```
# Production usage
In this phase of the project you can launch the project only on the vps with the domain name connect to it other than that you have to change the settings accordingly.(you can use the stage config as base for the nginx)
But before that dont forget to create .env files in the envs directory for prod mode which contains backend,nginx and the db.
after creating the files all you need to do to build the project is to run the command bellow:
```bash
docker compose -f docker-compose-prod.yml  run --rm certbot /opt/certify-init.sh
```
<strong>Note:</strong>the command i provided will firstly create the containers and volumes to run the whole project, then it will create a container to access the running server, when the server is accessible it will ask letsencrypt server to create a certificate for it with acme challange. this certificate will be valid for 90 days and you can renew it when ever you want.

# Security
On Production mode you have all the security headers and settings added to nginx and even auto ssl encryption for 90 days valid. you can find the results by using these services:
- Mozilla Observatory
<img src="https://user-images.githubusercontent.com/29748439/187753171-c600c12d-1979-44e7-ad32-65243e777c77.png" alt="security headers" style="max-width:1280px;width:100%" />

- Security Headers
<img src="https://user-images.githubusercontent.com/29748439/187752756-8368f1dc-e4c2-4256-ab8a-9c7d2a44da00.png" alt="security headers" style="max-width:1280px;width:100%" />

- SSL Checker
<img src="https://user-images.githubusercontent.com/29748439/187753336-dd575268-f2be-49b9-9934-21928017d518.png" alt="security headers" style="max-width:200px;width:100%; max-height:400px;text-align:center" />


# License
MIT.

# Todo
- [ ] add pre commands

# Bugs
Feel free to let me know if something needs to be fixed. or even any features seems to be needed in this repo.
