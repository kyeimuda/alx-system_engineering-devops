# Install Nginx web server (w/ Puppet)

exec { 'Install':
  command  =>'apt-get -y update && apt-get -y install nginx && echo "Holberton School" > /var/www/html/index.nginx-debian.html && command="server_name _;\n\trewrite ^\/redirect_me https:\/\/www.google.com\/?sa=X&ved=0ahUKEwiM8NGV8sn2AhUC3hoKHRwjBMQQOwgC permanent;" && sed -i "s/server_name _;/$command/" /etc/nginx/sites-available/default && service nginx start',
  provider => 'shell',
}