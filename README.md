# Python Builder

A simple Python Image to be used in docker multi-stage builds.

## Capabilities

This image is based on docker.io/python. The image repository is `andreclaudino/python-builder`, the tag follow the pattern:

```
BASE_IMAGE_TAG-IMAGE_VERSION
```

* `BASE_IMAGE_TAG`: the tag of the base image, i.e.: for `python:3.10-slim` image BASE_IMAGE_TAG=3.10-slim
* `IMAGE_VERSION`: The version of this image, i.e: `1.0.0`

This image contains:

* `aws client`: used to access s3
* `curl`: used to download files using http protocol
* `unzip`: To manage *zip* files
* `tar`: To manage *.tar* files
