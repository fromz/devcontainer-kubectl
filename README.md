# Installation
Add the following to your .devcontainer/devcontainer.json 
```json
   "features": {
        "https://github.com/fromz/devcontainer-kubectl/blob/master/devcontainer-feature-kubectl.tgz?raw=true": {
            "version": "latest"
        }
    }
```

# Features

- Installs kubectl
- Installs https://github.com/aabouzaid/kubech
- Installs kube-ps1.sh (activated by "source kube-ps1.sh")

# TODO:
- Publish the tarball to an OCI registry as an artefact to allow versioning etc