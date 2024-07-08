# Utiliser l'image Alpine comme base
FROM alpine:latest

# Installer Samba
RUN apk update && apk add samba samba-common-tools

# Ajouter un utilisateur et un groupe pour Samba
RUN addgroup -S sambagroup && adduser -S -G sambagroup -H sambauser

# Créer le répertoire de partage
RUN mkdir -p /srv/samba/share && \
    chown -R sambauser:sambagroup /srv/samba/share && \
    chmod -R 0755 /srv/samba/share

# Exposer les ports Samba
EXPOSE 445/tcp 139/tcp

# Définir le point d'entrée par défaut (sera remplacé par Docker Compose)
CMD ["tail","-f","/dev/null"]
