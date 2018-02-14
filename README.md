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

Make sure you have Node.js, Yarn and Go and Docker installed before starting 

[Install Node](http://til.acm.illinois.edu/nodejs/install-nvm/)

[Install Docker](https://docs.docker.com/compose/install/)


There are a couple components of the GPU Cluster. To get all of them we use a tool called repo 

1. Install repo - https://android.googlesource.com/tools/repo/

    Mac OS
    ```sh
    brew install repo 
    ```

    Ubuntu 14.04+
    ```sh    
    sudo apt install repo

    ```
2. Make a directory to house your GPU Cluster work, create this directory in your $GOPATH
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



