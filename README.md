Install Laravel Docker-UNMP  
1.docker pull jerichen/docker-unmp:v1  
2.docker -t -i --name unmp -p 8082:80 -p 3307:3306 -v ~/Code/blog:/var/www/html/blog jerichen/docker-unmp:v1 /bin/bash
