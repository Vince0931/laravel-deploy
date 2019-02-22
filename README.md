# Install

Créer une instance preemptible sur Google Cloud PLateform

Cette instance sera automatiquement supprimée au bout de 24h

```bash
gcloud compute instances create deploy --zone europe-west3-c --preemptible

```

activer port http and https sur la config de la vm

Ajout de la clé ssh dans /root/.ssh/authorized_keys

Allow permit root true dans /etc/ssh/sshd_config

Relancer les services

```bash
service sshd restart
service ssh restart
```

Copier la clé RSA sur le distant puis affecter les droits

```bash
chmod 400 ~/.ssh/id_rsa
```


---

Préparer le serveur distant :
```bash
apt install apt-transport-https lsb-release ca-certificates
wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'

apt update
apt-cache search php7.2
apt install nginx php7.2 php7.2-common php7.2-cli php7.2-fpm php7.2-mysql php7.2-xml php7.2-curl php7.2-mbstring php7.2-zip  mysql-server

curl -sL https://deb.nodesource.com/setup_10.x | bash

apt-get install -y nodejs gcc g++ make

npm install -g yarn
```



---

Lancer l'image docker

```bash
docker-compose build
```

---


Lancer le déploiement (ex en 'prod' sur la branche 'master')

```bash
make deploy-prod master
```