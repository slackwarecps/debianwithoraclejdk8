clear
echo "[X] Parando os containers.........."
echo "================================================================="
docker stop -t 0 $(docker ps -q)
docker stop -t 0 container-debianwithoraclejdk8
echo " "
echo "[X] Apagando container.........."
echo " "
docker rm container-debianwithoraclejdk8
echo "[X] Criando Container a partir da  Imagem.........."
echo " "
docker build -t fabioalvaro/debianwithoraclejdk8:latest .
BASEPROJETO=/home/fabioalvaro/workspace-fabioalvaro/assertiva/sms-status-rx/
docker run -it --name container-debianwithoraclejdk8 -p 5000:5000 -v "$BASEPROJETO:/opt/projeto" -v"$HOME/.m2:/root/.m2"  -v"$HOME/.aws:/root/.aws" fabioalvaro/debianwithoraclejdk8:latest

# debianwithoraclejdk8:latest
#docker run -it --name container-debianwithoraclejdk8  fabioalvaro/debianwithoraclejdk8:maven
