FROM debian:buster

RUN DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y wget gnupg ca-certificates && \
    rm -rf /var/cache/apt && rm -rf /var/lib/apt && \
    # wget -O - https://openresty.org/package/pubkey.gpg | sudo apt-key -y add - && \
    apt-get -y install --no-install-recommends software-properties-common && \
    add-apt-repository -y "deb http://openresty.org/package/debian $(lsb_release -sc) openresty" && \
    apt-get update && \
    apt-get -y install openresty

CMD nginx -g 'daemon off;'