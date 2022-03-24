# A puppet script that automates the task of creating an HTTP hearder
exec {'HTTP_Header':
  command  => 'apt-get -y update && apt-get -y install nginx && echo "Hello World" > /var/www/html/index.nginx-debian.html && CUS_NAME="server_name _;\n\tadd_header X-Served-By $HOSTNAME;" && sed -i "s/server_name _;/$CUS_NAME/" /etc/nginx/sites-available/default && service nginx restart',
  provider => shell,
}
