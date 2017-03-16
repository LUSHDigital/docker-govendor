# Docker Govendor
A docker image for vendoring golang dependencies.

This image will allow you to install the dependencies required for your golang application and *vendor* them. For more information on how vendoring works with Golang see their [wiki](https://github.com/golang/go/wiki/PackageManagementTools#go15vendorexperiment).

## Usage
Simply run a container with this image and map the path to your Go app as a volume:
```bash
$ docker run -it --rm -v path/to/app:/go/src/app lushdigital/docker-govendor
```

## Why not use the GOPATH?
Sure you can use your GOPATH to manage dependencies on your local machine and most of the time it will work fine. But there are cases where this may not work, for example if your Golang application is part of a [monolithic repo](https://danluu.com/monorepo/) (outside of the GOPATH) with apps in other languages.

Basically put this image allows you to install your Golang depencies without the need to `go get`, without the need to install `govendor` and to be honest without the need to have Go on your host machine!
