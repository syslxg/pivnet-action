#!/bin/bash

api_token=$1
product_slug=$2
endpoint=$3
file_glob=$4
metadata_file=$5
override=$6

echo '{
    "source": {
        "api_token": "'${api_token}'",
        "product_slug": "'${product_slug}'",
        "endpoint": "'${endpoint}'"
    },
    "params": {
        "file_glob": "'${file_glob}'",
        "metadata_file": "'${metadata_file}'",
        "override": '${override}',
        "s3_filepath_prefix": "product-files/'${product_slug}'"
    }
}' > input.json

echo 'using input.json:'
cat input.json

cat input.json |  /opt/resource/out .
