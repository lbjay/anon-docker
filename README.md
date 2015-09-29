# anon-docker

A containerized instance of [anon](http://github.com/edsu/anon). Available from
the public Docker registry at [lbjay/anon-docker](https://hub.docker.com/r/lbjay/anon-docker/)

### Config via url

The container's entrypoint script can fetch your `config.json` from a url at
runtime, e.g., from a (private) gist.

`docker run -t -i -e ANON_CONFIG_URL=<raw gist url> lbjay/anon-docker`

### Config via volume

Alternatively, you can mount a local config file into the container.

`docker run -t -i -v /path/to/config.json:/opt/anon/anon/config.json --privileged=true lbjay/anon-docker`

### additional options

You can provide additional options, like `--verbose` or `--noop` to anon by
appending them to the end of the docker `run` command. The entrypoint script
will pass them along to the script.

