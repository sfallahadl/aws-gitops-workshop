+++
title = "Build Container"
chapter = false
weight = 21
+++

Applications that are destined for a Kubernetes cluster, need to be packaged in a Docker container first.

We will setup an automated pipeline that does the following

1. Checks out source code from Git
2. Builds a Docker image with the source code
3. Stores the Docker image in a registry (Dockerhub in our case)

## Fork the sample application

First fork the example application so that it resized in your own Github account.

Go to [https://github.com/codefresh-contrib/aws-gitops-app](https://github.com/codefresh-contrib/aws-gitops-app) and click on the fork button.

![Create a Github fork](/images/basic_ci/fork.png)

Wait a bit until Github says that the fork is finished.


## Create a Codefresh project

Codefresh pipelines are grouped under projects. Project names can be anything you want with the most common example being the name of an application where all pipelines in the project are packaging/deploying the different microservices. You can think of projects as “folders/directories” for your pipelines.

Log into Codefresh and make sure that you have selected Projects from the left sidebar. Then click on the *New project* button on the top right corner to get started.

Enter a name for your project (e.g. my-first-project) and choose a sample icon that you like. Leave the *Project tags* field empty.

Click the Create button once you are done. You now have a new project and can start adding pipelines in it.
