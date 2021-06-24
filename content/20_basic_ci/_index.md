+++
title = "1. Continuous Integration"
chapter = true
weight = 20
+++

# Create a basic CI pipeline

Continuous Integration is the process where for each commit, the source code
is tested, compiled and packaged in an artifact (a container in the case of Kubernetes).

As a minimum the code should be compiled/minified but you may have other optional stages such as unit tests, linters, security scanning, integration tests and so on.

In this section we will setup Continuous Integration with Codefresh for the example application at [https://github.com/codefresh-contrib/aws-gitops-app](https://github.com/codefresh-contrib/aws-gitops-app)

{{% children showhidden="false" %}}


