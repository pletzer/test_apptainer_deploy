# Test apptainer deployment

## Overview

This repo contyains two files:

 * pypack.def
 * ./github/workflows/apptainer_build_deploy.yml

File `pypack.def` is an Apptainer file definition for building a container. File `./github/workflows/apptainer_build_deploy.yml`
details the steps to build and deply the container when ever changes in this repo are pushed. The newly built container will appear at https://github.com/pletzer/test_apptainer_deploy/pkgs/container/test_apptainer_deploy. 

## How to download the container 

```bash
apptainer pull oras://ghcr.io/pletzer/test_apptainer_deploy:latest
```



