# docker-stunnel

## build

    $ # docker build --tag docker.io/igorwwwwwwwwwwwwwwwwwwww/stunnel .
    $ make

## push

    $ # docker push docker.io/igorwwwwwwwwwwwwwwwwwwww/stunnel
    $ make push

## run (locally)

    $ curl https://www.stunnel.org/downloads/stunnel-5.37.tar.gz | tar xzf -
    $ (cd stunnel-5.37/tools && ./makecert.sh)
    $ mv stunnel-5.37/tools/stunnel.pem .

    $ docker run -e 'PORT=6379' -e 'UPSTREAM=my-redis-host.website:6379' -p 6379:6379 -it docker.io/igorwwwwwwwwwwwwwwwwwwww/stunnel

## run (dockerhub)

    $ docker pull docker.io/igorwwwwwwwwwwwwwwwwwwww/stunnel
    $ docker run -e 'PORT=6379' -e 'UPSTREAM=my-redis-host.website:6379' -e "KEY=$(cat stunnel.pem)" -p 6379:6379 -it docker.io/igorwwwwwwwwwwwwwwwwwwww/stunnel
