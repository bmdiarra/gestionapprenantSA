# gestionapprenantSA
DOCUMENTATION SUR LE PROJET GESTION DES APPRENANTS

Le projet gestion des apprenants est un platform qui vise a  aider les differents acteur ( Apprenants, Formateurs, Community Menager,  Administrateurs) a gerer
facilement. 

GestionapprenantSA_back
Pour executer ce projet, il faut le télécharg a partir du repositery github suivant:
https://github.com/bmdiarra/gestionapprenantSA
avec la commande: git clone https://github.com/bmdiarra/gestionapprenantSA.git
Ensuite extraire si necessaire et ouvrir le dossier du projet pour y mettre dans un terminal et effectuer un:
composer install
Creer un fichier .env.local et y mettre la configuration suivante:
DATABASE_URL=mysql://root:@127.0.0.1:3306/projetfilrougebmd?serverVersion=10.4.16-MariaDB

Adapter la version avec celle de la base de donnée

Ensuite Regenerer ces fichiers

composer require lexik/jwt-authentication-bundle
$ mkdir config/jwt
$ openssl genrsa -out config/jwt/private.pem -aes256 4096
$ openssl rsa -pubout -in config/jwt/private.pem -out config/jwt/public.pem
Password jwt: passer
lexik_jwt_authentication:
    private_key_path: %kernel.root_dir%/../var/jwt/private.pem
    public_key_path:  %kernel.root_dir%/../var/jwt/public.pem
    pass_phrase:      %jwt_key_pass_phrase%
    token_ttl:        3600

