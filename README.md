<h1 align="center">Ultimate Django3.2 Template</h1>
<h3 align="center">Just a big starting point for any backend project</h3>
<p align="center">
<a href="https://www.python.org" target="_blank"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/python/python-original.svg" alt="python" width="40" height="40"/> </a>
<a href="https://www.djangoproject.com/" target="_blank"> <img src="https://user-images.githubusercontent.com/29748439/177030588-a1916efd-384b-439a-9b30-24dd24dd48b6.png" alt="django" width="40" height="40"/> </a> 
<a href="https://www.docker.com/" target="_blank"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/docker/docker-original-wordmark.svg" alt="docker" width="40" height="40"/> </a>
<a href="https://travis-ci.org" target="_blank"> <img src="https://www.vectorlogo.zone/logos/travis-ci/travis-ci-icon.svg" alt="travisci" width="40" height="40"/> </a>
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
  app:
    command: sh -c "python manage.py makemigrations && python manage.py migrate && python manage.py runserver 0.0.0.0:8000"
    environment:      
      - DEBUG=1
```

#### Build everything:

*The first time you run this it's going to take 5-10 minutes depending on your
internet connection speed and computer's hardware specs. That's because it's
going to download a few Docker images and build the Python + requirements dependencies.*

```sh
docker-compose up --build
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
docker-compose run --rm app sh -c " black -l 79 && flake8 && python manage.py test" -v core:/app
```

# Production usage

# License
MIT.

# Todo
- [x] fix production composefile
- [x] connect repo to travis ci
- [x] add development usage doc
- [x] add test usage doc
- [x] add encryptions
- [x] add 3 stages dev stageing production
- [ ] add production usage doc

# Bugs
Feel free to let me know if something needs to be fixed. or even any features seems to be needed in this repo.
