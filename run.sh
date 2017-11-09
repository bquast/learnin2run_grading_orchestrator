#!/bin/bash


submission_id=$1

python download_image.py --submission_id=$submission_id
./correct_tar_manifest.sh $submission_id
./load_docker_image.sh $submission_id
#Now the submitted image should be available as "submission_image_$submission_id:latest"
