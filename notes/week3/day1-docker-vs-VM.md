# Docker Vs VM
- docker uses OS level virtulization which means that instead of fix allocation of hardware resources, docker daemon communicates with the host os and allocate resources as need.
- In VM however the resources are fixed when a VM is created and can't be changes after words while it is running

- Docker mainly relies on the host os and doesn't not install whole operating system for each container. This works best with linux based hosts. For host where windows or mac is running the docker desktop contains the linux kernal on which the containers rely upon.

- In VMs whole OS is installed separately for each VM

- Dcoker is a layered file system, in which everything is added as a layer. multiple running container can share the base image if it is same being used between them
