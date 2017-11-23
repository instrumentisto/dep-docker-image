Dep Docker Image
================

[![Build Status](https://travis-ci.org/instrumentisto/dep-docker-image.svg?branch=master)](https://travis-ci.org/instrumentisto/dep-docker-image) [![Docker Pulls](https://img.shields.io/docker/pulls/instrumentisto/dep.svg)](https://hub.docker.com/r/instrumentisto/dep)




## Supported tags and respective `Dockerfile` links

- `0.3.0`, `0.3`, `latest` [(debian/Dockerfile)][101]
- `0.3.0-alpine`, `0.3-alpine`, `alpine` [(alpine/Dockerfile)][102]




## What is Dep?

`dep` is a prototype dependency management tool for Go.

`dep` is the official _experiment_, but not yet the official tool. Check out the [Roadmap][11] for more on what this means!

[Current Status][12]

> [github.com/golang/dep](https://github.com/golang/dep)

![Dep Logo](https://raw.githubusercontent.com/golang/dep/master/docs/img/DigbyShadows.png)




## How to use this image

Mount your project into correct `$GOPATH` directory and provide the `dep` command you require:

```bash
docker run --rm -v $(pwd):/go/src/my/pkg/name -w /go/src/my/pkg/name \
    instrumentisto/dep ensure
```




## Image versions


### `latest`

Latest version of Dep.


### `X.Y`

Latest version of Dep `X.Y` branch.


### `X.Y.Z`

Concrete `X.Y.Z` version of Dep.


### `alpine`

This image is based on the popular [Alpine Linux project][1], available in [the alpine official image][2].
Alpine Linux is much smaller than most distribution base images (~5MB), and thus leads to much slimmer images in general.




## License

Dep itself is licensed under [BSD-3-Clause license][91].

And Dep Docker image is licensed under [MIT license][92] too.




## Issues

We can't notice comments in the DockerHub so don't use them for reporting issue or asking question.

If you have any problems with or questions about this image, please contact us through a [GitHub issue][3].





[1]: http://alpinelinux.org
[2]: https://hub.docker.com/_/alpine
[3]: https://github.com/instrumentisto/dep-docker-image/issues
[11]: https://github.com/golang/dep/wiki/Roadmap
[12]: https://github.com/golang/dep#current-status
[91]: https://github.com/golang/dep/blob/master/LICENSE
[92]: https://github.com/instrumentisto/dep-docker-image/blob/master/LICENSE.md
[101]: https://github.com/instrumentisto/dep-docker-image/blob/master/debian/Dockerfile
[102]: https://github.com/instrumentisto/dep-docker-image/blob/master/alpine/Dockerfile
