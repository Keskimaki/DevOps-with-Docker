#!/bin/sh

echo "Repository:"
read repo

echo "Image name:"
read name

git clone $repo dir/

cd dir

docker build -t $name . 

docker push $name

rm -rf dir/
