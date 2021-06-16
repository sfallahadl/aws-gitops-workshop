

# AWSWorkshop GitOps Workshop 

Learn to do GitOps at scale with AWS, Codefresh, and Argo CD. 


This site is built with [Hugo](https://gohugo.io). Documentation content is written in Markdown format located in './content'

## Deploying

The site is automatically deployed when commits are merged/pushed in `master`, hosted at https://workshop.kostis.sales-dev.codefresh.io

### Preview documentation locally with Docker 

1. Run `git submodule update --init --recursive` to get the theme (run this once)
1. Install [docker-compose](https://docs.docker.com/compose/)
1. Run `docker-compose up`
1. Open `http://localhost:3131` in your browser, and voila!

You can edit documentation files and see the updates by reloading the browser.

### Preview documentation locally 

1. Run `git submodule update --init --recursive` to get the theme (run this once)
1. Install Hugo [on your workstation](https://gohugo.io/getting-started/installing/)
1. From the root directory, run `hugo serve --environment staging` in the command line.
1. Open `http://localhost:1313` in your browser, and voila.

You can edit documentation files and see the updates by reloading the browser.