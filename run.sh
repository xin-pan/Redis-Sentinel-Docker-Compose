#export MASTER_HOST=`ifconfig en0|grep "inet\ "| awk '{ print $2}'`
export MASTER_HOST=`hostname`.local
echo "MASTER_HOST=$MASTER_HOST"

docker-compose down --rmi 'local'
docker-compose up -d
