# Install

Créer une instance preemptible

```bash
gcloud compute instances create deploy --zone europe-west3-c --preemptible

```


apt install apt-transport-https lsb-release ca-certificates
wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
apt update
apt-cache search php7.2
apt install nginx php7.2 php7.2-common php7.2-cli php7.2-fpm php7.2-mysql php7.2-xml php7.2-curl php7.2-mbstring php7.2-zip  mysql-server
curl -sL https://deb.nodesource.com/setup_10.x | bash
apt-get install -y nodejs gcc g++ make
npm install -g yarn




activer port http and https sur la config de la vm
Ajout de la clé ssh dans /root/.ssh/authorized_keys
Allow permit root true dans /etc/ssh/sshd_config
service sshd restart
service ssh restart


docker-compose build
make deploy-prod