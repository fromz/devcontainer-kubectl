#!/usr/bin/env bash
featureId=$(cat devcontainer-feature.json | jq '.id' -r)
packageName=devcontainer-feature-$featureId.tgz
tar -czvf $packageName --exclude=.git --exclude=$packageName -C . . 