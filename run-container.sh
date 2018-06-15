#begin of file
clear
echo "[X] Stoping os containers.........."
echo "================================================================="
docker stop -t 0 $(docker ps -q)
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
