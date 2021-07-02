+++
title = "The GitOps dashboard"
chapter = false
weight = 32
+++

In the previous section we have briefly seen the GitOps dashboard offered by Codefresh
in order to find out the public IP of the deployed application. In this section we will see some more details of the dashboard and more specifically the traceability if offers from production to commit

## Getting visibility into your deployments

The GitOps dashboard has 3 tabs

* Timeline
* Kubernetes services
* Current status

The *Timeline* tab has a complete history of your deployments in chronological order. You can also use the optional integration with JIRA in order to get information
on which JIRA features are included in each deployment. We will use
this screen in the next sections to perform rollbacks in our application.

![Timeline Tab](/images/gitops/timeline-tab.png)

The *Services* tab shows the Kubernetes services/deployments included in your application and is very important for tracing your release all the way back to source code as we will see in the next section.

![Services tab](/images/gitops/services-tab.png)

Finally the *Current State* tabs shows a live overview of the Kubernetes resources in your cluster. It follows a hierarchical pattern with clear dependencies between the different resources.

![Current State](/images/gitops/current-state-tab.png)

Using the GitOps dashboard can quickly answer questions such as who deployed, which features and when.

## Following a deployment back to source code

One of the big advantages of Codefresh is the full traceability if offers from a git commit all the way to production. 

One of the most common questions in a software release is "which source code revision is responsible for this environment". Answering this question is not always easy with traditional deployment solutions that are based on scripts. 

To answer this question you can easily click-through the following screens in order:

1. GitOps services tab
1. Images dashboard
1. Images Logs tab
1. Pipeline view
1. Github view

Here is how it works:

From the GitOps dashboard, click the *Services* tab. This shows
all deployed Services on the cluster.

Codefresh clearly shows which container image is powering this service. Click on the image name in the table column *IMAGES*

![Trace1](/images/gitops/trace1.png)

This takes you the Codefresh image dashboard that shows the metadata for this container
including its complete history. From the top navigation choose the *Logs* tab.

![Trace2](/images/gitops/trace2.png)

In the new screen you will which pipeline build created this image. Here you can have multiple options. You can click on the pipeline name at the top to edit that pipeline.

But most importantly you can click on the name of the commit message.

![Trace3](/images/gitops/trace3.png)

The final click will take you to Github (or any other of the supported Git providers) and show the the exact commit that use used as an input to the pipeline (and therefore the source of the container image).

![Trace4](/images/gitops/trace4.png)

This way you can also go from a deployed image back to the source code. This journey is only possible with Codefresh, because Codefresh has visibility both to the CI and the CD part of the process.





## 


