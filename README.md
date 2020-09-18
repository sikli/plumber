# plumber test repo
based on https://www.rplumber.io/articles/hosting.html

## install docker image
After you have sucessfully installed docker on your machine, get the plumber Docker Image from Rstudio:
docker pull rstudio/plumber


## Start Docker in current working dir to deploy API in hello.R:
navigate to the repo directory and run the docker that you have just downloaded. Specify the port -p 8000:8000 and the path as well as the script that contains the API route (hello.R)

docker run --rm -p 8000:8000 -v `pwd`/hello.R:/plumber.R rstudio/plumber /plumber.R`


## stop a running conainer
`docker stop <docker name>`


## check if docker is running and check for its name
`docker ps`

## Explore your docker container
For example, if you want to start a container based on this image and poke around in a bash shell:
`docker run -it --rm --entrypoint /bin/bash rstudio/plumber`


---


If you want to build your own Docker (e.g. install missing packages that are not part of the initial docker):
## Build custom docker image
`docker build --tag custom_plumber .`

## Run custom docker Image
`docker run --rm -p 8000:8000 -v `pwd`/hello.R:/plumber.R custom_plumber /plumber.R`


more coming soon...
