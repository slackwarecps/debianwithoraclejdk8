# debianwithoraclejdk8
Docker Image built with Debian Oracle JDK and Maven (optional). Using this image you can equalize the environmnt with java 


# how to create the complete Debian + JDK 8 + Maven environment

1) I need to be able to run docker

2) Download the image at docker pull fabioalvaro/debianwithoraclejdk8

    $ docker pull fabioalvaro/debianwithoraclejdk8
    
3) Download the script (built for linux, but you can adjust it to run in Windows) ;)

```sh

    clear
    echo "[X] Stoping os containers.........."
    
    
    echo " ================================================================= "
    docker stop -t 0 container-debianwithoraclejdk8
    echo " "
    echo "[X] erasing container.........."
    echo " "
    docker rm container-debianwithoraclejdk8
    echo "[X] Creating Container from this beatifull image.........."
    echo " "
    BASEPROJETO=/home/somefolder/anyjavafolder
    docker run -it --name container-debianwithoraclejdk8 -p 5000:5000 -v "$BASEPROJETO:/opt/projeto" -v"$HOME/.m2:/root/.m2"  fabioalvaro/debianwithoraclejdk8:latest 
    #end of file 
```   

4) save this script inside your home folder and run it.

    $ chmod +x ~/run-container.sh 
    $ ~/run-container.sh
    
    
5) Inside the container enter in main folder and call maven command to compile the spring project:

     123123123#$ cd /opt/projeto
     123123123#$ mvn spring-boot:run
     
     
## See more details on my docker hub page ##

https://hub.docker.com/r/fabioalvaro/debianwithoraclejdk8/


     
