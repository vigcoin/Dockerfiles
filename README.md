# Dockerfiles
Dockerfiles for vigcoin docker images


# coind的Docker运行方式

```
docker run -d -e PASSWORD=password -p 19800:19800 -p 19801:19801 -p 19802:19802 -v $HOME/docker/wallet:/wallet -v $HOME/docker/data:/data -v $HOME/docker/log:/var/log -v  $HOME/docker/data/.vigcoin:/root/.vigcoin -it vigcoin/coind
````
