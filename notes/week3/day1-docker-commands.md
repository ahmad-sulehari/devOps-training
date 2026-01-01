## Docker commands

### docker images
- list all docker images present on your local file system

### docker pull
- this command is use to pull a certain image from dockerhub or configured registory to you system

### docker search
- this command is used to search a package on the docker hub

### docker create
- only creates the container

### docker run
- this command create ( if a dockerfile is given) or pulls an image and starts the container based on the image
- -i option is for interactive mode
- -t is for terminal mode
- --name to give it a name

### docker start container-name
- to start an existing docker container that is exited (container stop on exit)

### docker attach container-name
- to attach to a running container

### docker ps
- to see running conatiners
- -a to see all containers

### docker stop

### docker rm

-------

# docker sharing volume between containers

if we have a volume created inside a container which was defined in the docker file as
`VOLUME ["/myvolume"]`

when we run another container we can access this volume by using following command

`docker run -it --name my-container --privileged --volumes-from previous-container ubuntu bash`

if we want, we can even mount a host directory to the container

`docker run -it --name my-container -v /usr/local/myapp:/app ubuntu bash`

this maps the local directory from host to the app directory inside the container.
any changes made will be refrected on both sides
