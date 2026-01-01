## Volumes vs mount
### How Docker tells them apart
Docker looks at the first part of the command (before the first colon :)

- **Bind Mount**: If the path starts with a slash (e.g., /, ./, or ~/), Docker treats it as a specific location on your host machine.

- **Named Volume**: If the path starts with a name (no slashes), Docker treats it as a managed volume stored in its internal directory.

| Type | Example Syntax | What happens? |
|------|----------------|---------------|
|Bind Mount | -v /host/path:/container/path | Maps a specific host folder directly to the container. |
|Named Volume | -v my_data:/container/path | Docker creates a volume named my_data in its own storage area. |
|Anonymous Volume | -v /container/path | Docker creates a volume with a random ID and no name. |


## docker exec Vs docker attach
- exec creates a new process
- attach will attach to the main process that was configured when the container was created or what was specified in the Dockerfile

`docker exec -it container-name bash`
- this will create a new bash process inside the container and attach you to it

`docker attach -it container-name`
this will attach to the main container process


## docker expose Vs -p (publish)
- if we only use EXPOSE in Dockerfile it will expose the port to the host only
- if we also use -p while creating the container it will publish the port to be accessed from anywhere

For example your host is an ec2 instance and running a docker container with a web server on port 80
- if we use EXPOSE 80/tcp this would expose the 80 port to the ec2 instance localhost:80
- if we use -p while creating the container like `-p 80:80` this will map the host 80 port to container 80 port and also publish it to be accessible from outside using the ec2's public ip address and this port number

- if we don't use expose and directly use -p it implicitly expose the port as well
