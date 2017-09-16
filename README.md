# docker-opendkim

Run [opendkim](http://opendkim.org/) in a Docker container.

### Usage

```
docker run \
  -v opendkim.conf:/etc/opendkim/opendkim.conf:ro \
  -v example.com.key:/var/db/dkim/example.key:ro \
  -v TrustedHosts:/etc/opendkim/TrustedHosts:ro \
  -v KeyTable:/etc/opendkim/KeyTable:ro \
  -v SigningTable:/etc/opendkim/SigningTable:ro \
  registry.gitlab.com/peterkuczera/docker-opendkim/opendkim
```

### Generating a new keypair

```
$ docker run -it alpine sh
# opendkim-genkey --restrict --selector=default --domain=example.com
# ls default*
default.private  default.txt
```
