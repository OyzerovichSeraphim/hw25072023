sudo apt update
sudo mkdir terraform
cd terraform

sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce
sudo systemctl status docker
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
sudo docker swarm init
sudo curl -k -L -O http://rosmegblog.ru/docker-compose.yml
sudo docker stack deploy -c docker-compose.yml my_shop
docker service ls
docker node ls

sudo apt-get install wget unzip
sudo curl -k -L -O http://rosmegblog.ru/terraform_1.1.0_linux_amd64.zip
sudo unzip terraform_1.1.0_linux_amd64.zip
sudo mv terraform /usr/local/bin/
sudo terraform validate
sudo terraform plan
sudo terraform apply