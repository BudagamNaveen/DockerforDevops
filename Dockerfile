FROM httpd
COPY . /var/www/html/
CMD ['service','httpd','start']
