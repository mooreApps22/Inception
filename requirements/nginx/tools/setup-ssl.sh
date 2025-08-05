CERTS_DIR="/etc/nginx/ssl"
mkdir -p "$CERTS_DIR"

openssl req -x509 -nodes -days 365 -newkey rsa:4096 \
	-keyout "$CERTS_DIR/smoore.key" \
	-out "$CERTS_DIR/smoore.crt" \
	-subj "/C=GB/ST=London/L=London/O=42/OU=Student/CN=smoore.42.fr"
