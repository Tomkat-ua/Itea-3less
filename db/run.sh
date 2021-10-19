prefix=itea
container=$prefix-mysql
image=$container-img
docker build  --pull -t  $image .

docker container stop $container
docker container rm   $container


docker run -d -t   \
  -p 3307:3306     \
  -v  mysql:/var/lib/mysql \
  -e MYSQL_RANDOM_ROOT_PASSWORD=MySQL \
  -e MYSQL_DATABASE=sales	\
  -e MYSQL_USER=appuser		\
  -e MYSQL_PASSWORD=appuser	\
  --name $container \
  $image

