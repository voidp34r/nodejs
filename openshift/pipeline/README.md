This directory contains a Jenkinsfile which can be used to build
nodejs using an OpenShift build pipeline.

To do this, run:

```bash
# create the nodejs example as usual
oc new-app https://github.com/voidp34r/nodejs

# now create the pipeline build controller from the openshift/pipeline
# subdirectory
oc new-app https://github.com/voidp34r/nodejs \
  --context-dir=openshift/pipeline --name nodejs-pipeline
```
