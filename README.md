# plumber test repo


## install docker image
docker pull rstudio/plumber


## Start Docker in current working dir to deploy API in hello.R:

docker run --rm -p 8000:8000 -v `pwd`/api.R:/plumber.R rstudio/plumber /plumber.R


more coming soon...
