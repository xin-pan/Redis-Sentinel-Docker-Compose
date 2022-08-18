export MASTER_HOST=`ifconfig en0|grep "inet\ "| awk '{ print $2}'`

docker-compose down --rmi 'local'
docker-compose up -d
