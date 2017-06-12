# Install Laravel Docker-UNMP  


1.docker image pull jerichen/docker-unmp:v1 

 
2.docker container create -t -i --name laravel -p 8082:80 -p 3307:3306 -v ~/Code/blog:/var/www/html/blog jerichen/docker-unmp:v1


3.docker container start laravel 


4.docker container exec -ti laravel /bin/bash
