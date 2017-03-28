#!/bin/bash

# workdir=$(pwd)
workdir='.'
# paths are relative to the builder script. (magento)

# usage: buildnpush [tag_array] [path] [dockefile]
function buildnpush {
  tags=("$@")
  for i in "${tags[@]}"
  do
  	docker build -f $file -t aspendigital/magento:$i $path/.
    docker push aspendigital/magento:$i
  	# echo "docker build -f $file -t aspendigital/magento:$i $path/."
    # echo "docker push aspendigital/magento:$i"
    echo "-----"
  done
}


tags=("1.7.0.2-php5.4")
path="$workdir/php5.4"
file="$path/Dockerfile"
buildnpush "${tags[@]}"

tags=("1.9.1.1-php5.5")
path="$workdir/php5.5"
file="$path/Dockerfile"
buildnpush "${tags[@]}"

tags=("1.9.3.1-php5.6" "latest")
path="$workdir/php5.6"
file="$path/Dockerfile"
buildnpush "${tags[@]}"
