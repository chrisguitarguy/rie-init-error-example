#!/bin/sh

curl -X POST \
    "http://${AWS_LAMBDA_RUNTIME_API}/2018-06-01/runtime/init/error" \
    -d '{"errorType":"initerror","errorMessage":"oops"}'
