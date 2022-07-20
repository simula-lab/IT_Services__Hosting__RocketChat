docker rm $(docker ps -a | grep Exited | awk '{ print $1 }')
docker-compose -f /root/rocketchat/docker-compose.yaml up certbot
docker-compose -f /root/rocketchat/docker-compose.yaml exec nginx nginx -s reload
docker rm $(docker ps -a | grep Exited | awk '{ print $1 }')
