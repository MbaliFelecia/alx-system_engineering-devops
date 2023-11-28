# Installs a Nginx server

exec {'install':
  provider => shell,
  command  => 'sudo apt-get -y update ; sudo apt-get -y install nginx ; echo "Hello World!" | sudo tee /var/www/html/index.nginx-debian.html ; sudo sed -i "s/server_name_;/server_name_;\n\trewrite ^\/redirect_me https:\/\/github.com\/MbaliFelecia permanent;/" /etc/nginx/site-available/default ; sudo service nginx start',
}
