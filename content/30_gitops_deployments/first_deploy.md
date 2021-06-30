+++
title = "Your first deployment"
chapter = false
weight = 22
+++



The first step is to create an application in the Codefresh UI.

Fork the following repository in your GitHub account https://github.com/codefresh-contrib/aws-gitops-app-manifests.

It is a [simple Helm chart](https://helm.sh/) (the package manager for Kubernetes) that contains 2 manifests, one of the application and one for the Kubernetes service.

After you fork the repository, edit the file `simple-java-app/values.yaml`
and change the `repository` line to your own `<dockerhub id>`.

```yaml
replicaCount: 1

image:
  repository: <your dockerhub id>/my-app-image
  pullPolicy: IfNotPresent
  # Overrides the image tag whose default is the chart appVersion.
  tag: latest
```  


Then in the Codefresh UI click on *GitOps* on the left sidebar. Click the *Add application* button and in the middle of the dialog choose the *Provision a new application* tab.

Fill in the details.

* Name: `GitOps example`
* GitOps integration: Should be preselected
* Project: default
* Application: `my-java-app`
* Manual/Automatic toggle: Choose automatic
* Repository URL: https://github.com/<your github>/aws-gitops-app-manifests
* Revision: HEAD
* Path: `./simple-java-app`
* Cluster: "in cluster"
* Namespace: "default"
* Directory recurse: true

![Adding the application](/images/gitops/add-application.png)

Click the *Create* button and wait for the first deployment to take place.
At this point Codefresh is instructing your cluster to match the cluster
state with the manifests in Git.

After a while your application will be deployed and you should see a "Healthy"
status in the dashboard.

![Healthy status](/images/gitops/healthy.png)

 {{% notice note %}}
For simplicity reasons we deploy the application to the "default" namespace of the cluster. It is also possible to choose other namespaces for different applications.
{{% /notice %}}

## Viewing the deployed application


## Deploying a new version

To perform our first deployment we need to decide what application image we will use.
In the Codefresh UI click on *Images* on the sidebar and locate the image that we created in the previous section of the workshop

![Integration tests](/images/gitops/image-tag.png)

Note down the tag and URL on the image. In the example above it is `docker.io/kostiscodefresh/my-app-image:385643c`




