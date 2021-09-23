# Guideline
- [Goal](#goal)
- [Repo Features](#repo-features)
- [Configurations](#configurations)
- [Development usage](#development-usage)
- [Production usage](#production-usage)
- [License](#license)
- [Todo](#todo)
- [Bugs](#bugs)

# Goal
This project main goal is to provide a way to deploy django applications by using docker along with nginx, gunicorn and letsencrypt and much more features a backed developer needs.


# Repo Features
<ul>
  <li>
       <strong>Latest LTS Django Latest LTS</strong>        
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
       <strong>Nginx</strong>        
  </li>
  <p>included nginx setup and file configs for production</p>
 
 <li>
       <strong>Django env</strong>        
  </li>
  <p>enviroment sample file and setup</p>
 
 <li><strong>Hints and Files</strong></li>
  <p>Sample files and hints all over the template for more giving more pace</p>
 
 <li><strong>Travis and Flake8</strong></li>
  <p>Included with travis.yml configuration file for test purposes.plus included Flake8 and config files.</p>
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

# Production usage

# License
MIT.

# Todo
- [ ] fix production composefile
- [ ] add RestApi hints and configurations
- [ ] connect repo to travis ci
- [ ] add CBV hints in views and ulrs

# Bugs
Feel free to let me know if something needs to be fixed. or even any features seems to be needed in this repo.
