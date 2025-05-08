List images: docker image ls

Find size of a container:

    docker inspect -f "{{ .Size }}" <IMAGE_NAME>

    docker inspect -f "{{ .Size }}" mybuild

GC images:

    docker image prune


Kill:

    # The easy ways:
    docker stop <container>
    docker kill <container>

    # If these fail, then kill the daemon:
    # Pick which container
    docker ps

    # Get the pid of the container
    docker inspect <container> | grep Pid
    # ... and extract it
    docker inspect <container> | jq -r '.[0].State.Pid'

    sudo kill <pid>
