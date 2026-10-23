
## Gestion des images / conteneurs
```
# download image from registry
docker pull php:8.3.36-cli-alpine

# lister les image sloacles
docker image ls   

docker run -it php:8.3.36-cli-alpine       # nom aléatoire
docker ps       # lister les started (up)
docker ps -a    # lister tous les conteneurs

docker run -it --rm php:8.3.36-cli-alpine  # remove after usage

# remove previous containers (not removed)
docker rm strange_hodgkin   # name
docker rm 25ec0dd1153a      # id


docker run nginx:alpine  # nom aleatoire
    Ctrl-C
docker rm  cranky_black

# conteneur nommé + arrière plan
docker run --name nginx-proxy -d nginx:alpine
docker stop nginx-proxy
docker start nginx-proxy
docker restart nginx-proxy

docker rm nginx-proxy  # refusé car il tourne

docker stop nginx-proxy
docker rm nginx-proxy   # ok car arrété

docker run --name nginx-proxy -d nginx:alpine
docker rm -f nginx-proxy   # stop + rm

docker logs nginx-proxy | less
docker inspect nginx-proxy | less

docker exec -it nginx-proxy bash  #  executable file not found in $PATH
docker exec -it nginx-proxy sh
    ps -aef
    ls /etc
docker exec -it nginx-proxy sh -c "ps -aef | wc -l"

# mapping port
docker rm -f nginx-proxy
docker run --name nginx-proxy -p 8080:80 -d nginx:alpine
docker ps
curl localhost:8080
curl 172.16.27.10:8080   # IP host

# choisir une interface
docker run --name nginx-proxy -p 127.0.0.1:8080:80 -d nginx:alpine
```

