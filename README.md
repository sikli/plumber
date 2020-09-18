# plumber test repo
based on https://www.rplumber.io/articles/hosting.html

## install docker image
docker pull rstudio/plumber


## Start Docker in current working dir to deploy API in hello.R:
`docker run --rm -p 8000:8000 -v \\`pwd\\`/api.R:/plumber.R rstudio/plumber /plumber.R`



## Build custom docker image
`docker build --tag custom_plumber .`


## Run custom docker Image
`docker run --rm -p 8000:8000 -v `pwd`/hello.R:/plumber.R custom_plumber /plumber.R`


more coming soon...
