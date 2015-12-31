# nginx + PHP7 Docker

## Building the container

To build run either from within the cloned directory (please note the trailing dot):

```sh
docker build -t nilportugues/nginx_php7 .
```

After a successful build, a container can be ran by the following command:
```
docker run -ti nilportugues/nginx_php7
```

## PHP 7

The following extensions come enabled by default: 

- php7.0-bz2
- php7.0-cgi
- php7.0-cli
- php7.0-common
- php7.0-curl
- php7.0-dbg
- php7.0-dev
- php7.0-fpm
- php7.0-gd
- php7.0-imap
- php7.0-interbase
- php7.0-intl
- php7.0-json
- php7.0-ldap
- php7.0-mcrypt
- php7.0-mysql
- php7.0-odbc
- php7.0-opcache
- php7.0-pgsql
- php7.0-phpdbg
- php7.0-pspell
- php7.0-readline
- php7.0-recode
- php7.0-snmp
- php7.0-sqlite3
- php7.0-sybase
- php7.0-tidy
- php7.0-xmlrpc

## nginx

All optimisation configurations can be found at the [helpers](https://github.com/nilportugues/docker-nginx_php7/tree/master/helpers) directory.

## Contribute

Contributions to the package are always welcome!

* Report any bugs or issues you find on the [issue tracker](https://github.com/nilportugues/docker-nginx_php7/issues/new).
* You can grab the source code at the package's [Git repository](https://github.com/nilportugues/docker-nginx_php7).


## Support

Get in touch with me using one of the following means:

 - Emailing me at <contact@nilportugues.com>
 - Opening an [Issue](https://github.com/nilportugues/docker-nginx_php7/issues/new)


## Authors

* [Nil Portugués Calderó](http://nilportugues.com)
* [The Community Contributors](https://github.com/nilportugues/docker-nginx_php7/graphs/contributors)
