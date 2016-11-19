# docker-stunnel

## build

    $ # docker build --tag docker-stunnel .
    $ make

## run

    $ curl https://www.stunnel.org/downloads/stunnel-5.37.tar.gz | tar xzf -
    $ (cd stunnel-5.37/tools && ./makecert.sh)
    $ mv stunnel-5.37/tools/stunnel.pem config

    $ docker run -v $(pwd)/config:/etc/stunnel:ro -e 'PORT=6379' -e 'UPSTREAM=my-redis-host.website:6379' -p 6379:6379 -it docker-stunnel
