#!/bin/sh

touch /var/radicale/users

python -m radicale \
	--logging-level info \
	--config "" \
	--storage-filesystem-folder /var/radicale/collections \
	--server-hosts 0.0.0.0:5232 \
	--auth-type htpasswd \
	--auth-htpasswd-filename /var/radicale/users \
	--auth-htpasswd-encryption bcrypt
