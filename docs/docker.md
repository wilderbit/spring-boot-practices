`docker container ls -a --filter status=exited --filter status=created`
`docker container prune`  use the -f or --force flag to bypass the prompt

`docker container prune --filter "until=12h"` allow to remove containers based on filters
Stop and remove all container `docker container stop $(docker container ls -aq)`

Remove dangling images `docker image prune`

Remove all unused images `docker image prune -a` can also use filters `--filter "until=12h"`

https://linuxize.com/post/how-to-remove-docker-images-containers-volumes-and-networks/