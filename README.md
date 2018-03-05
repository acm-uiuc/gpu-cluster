# gpu-cluster
Root repo for ACM GPU Cluster

[![Join the chat at https://acm-uiuc.slack.com/messages/C6XH6H85S](https://img.shields.io/badge/slack-GPU%20Cluster-724D71.svg)](https://acm-uiuc.slack.com/messages/C6XH6H85S)

## Overview 

The GPU Cluster Project breaks down into a couple parts.

### Javascript 

[GPU Cluster Frontend](https://github.com/acm-uiuc/gpu-cluster-frontend) - Frontend written in React, calls backend

### Python 

[GPU Cluster Backend](https://github.com/acm-uiuc/gpu-cluster-backend) - Backend written in python, recieves requests and creates containers

[nvdocker](https://github.com/acm-uiuc/nvdocker) - A python package to manage interfacing with GPU enabled containers

### [Nvidia] Docker

[GPU Cluster Images](https://github.com/acm-uiuc/gpu-cluster-images) - Standard Deep Learning Containers

### Slurm 

Cluster management software. 

## Getting Started

Make sure you have Node.js, Yarn and Python and Docker installed before starting 

[Install Node](http://til.acm.illinois.edu/nodejs/install-nvm/)

[Install Docker](https://docs.docker.com/compose/install/)

[Install nvidia-docker](https://github.com/NVIDIA/nvidia-docker)

There are a couple components of the GPU Cluster. To get all of the source run:

```
git clone --recursive git@github.com:acm-uiuc/gpu-cluster
````

You can also use repo if you like that better

1. Install repo - https://android.googlesource.com/tools/repo/

    Mac OS
    ```sh
    brew install repo 
    ```

    Ubuntu 14.04+
    ```sh    
    sudo apt install repo

    ```
2. Make a directory to house your GPU Cluster work
    ```sh
    mkdir $GOPATH/src/github.com/acm-uiuc/gpu-cluster
    ```
    
3. Within this directory run the following command to start managing the projects

    ```sh    
    repo init -u git@github.com:acm-uiuc/gpu-cluster
    ```
    
4. Run the following command to grab the latest of all the repos 

    ```sh    
    repo sync
    ```

If you are going to work on the Docker images, make sure to have an NVIDIA Graphics Card and have NVIDIA Docker installed in addition to Docker.
https://github.com/NVIDIA/nvidia-docker

To start you can build the cluster with ```./build_gpu_cluster```. Then you can use ```./gpu_cluster``` to start the interface on port 4000. 

If you want to install the cluster as a daemon, place the repo in ```/usr/local/gpu-cluster``` or change gpu_cluster.ini to reflect the location of the ```./gpu_cluster``` executable. 

Then install circus with 
```
pip install circus
```
Then create a systemd service following these instructions and pointing to ```gpu_cluster.ini```

> http://circus.readthedocs.io/en/latest/for-ops/deployment/




Deployed as a daemon using systemd and circus



