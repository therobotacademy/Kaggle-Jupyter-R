#!/usr/bin/bash
docker run --restart always -v ${PWD}/data:/tmp/working -w=/tmp/working -p 8900:8888 --name kaggle-R \
   -d kaggle/rstats jupyter notebook --no-browser --ip="0.0.0.0" --notebook-dir=/tmp/working --allow-root

docker logs kaggle
