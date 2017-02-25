# Install Laravel 5 
It installs Laravel 5 with database settings.

```
curl -L https://raw.githubusercontent.com/yousan/l5here/master/l5here.sh  | bash -s <project> [DB_HOST] [DB_PORT] [DB_DATABASE] [DB_USERNAME] [DB_PASSWORD]
```


# memo
```
NAME=l5_test9 ; \
pushd . 
cd ~/git; 
curl -L https://raw.githubusercontent.com/yousan/l5here/master/l5here.sh  | bash -s ${NAME} ; \
ln -s ~/git/${NAME}/public ~/public_html/${NAME}.dev; \
popd
```
