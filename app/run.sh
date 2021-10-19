prefix=itea
container=$prefix-php
image=$container-img

docker build  --pull -t  $image .

docker container stop $container
docker container rm   $container

docker volume create noviano

docker run -d -t    \
  -p 8082:80        \
  -v noviano:/var/www/html \
  --name $container \
  $image 

