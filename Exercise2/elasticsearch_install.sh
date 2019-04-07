#/bin/bash

#Run the script as root user

#Usage: sh elasticsearch_install.sh

apt-get -y update
apt-get install -y docker.io
docker run -d --name elk -p 9200:9200 elasticsearch:5.6.12

echo "\n\n---------------Please wait for 60 second------------------\n\n"
sleep 60
elk_health=`curl -XGET http://localhost:9200/_cluster/health`

echo "\n\n---------------elasticsearch health status----------------\n\n"
echo $elk_health

echo "\n\n-----------------------------------------------------------\n\n"
