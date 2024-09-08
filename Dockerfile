# Utiliser l'image officielle de MySQL
FROM mysql:5.7

# Copier votre script SQL dans le dossier où MySQL les lit au démarrage
COPY init-db.sql /docker-entrypoint-initdb.d/

# Autoriser l'utilisateur root à se connecter sans mot de passe
ENV MYSQL_ALLOW_EMPTY_PASSWORD=true

# Définir la base de données par défaut à créer
ENV MYSQL_DATABASE=default_db

# Exposer le port MySQL
EXPOSE 3306
