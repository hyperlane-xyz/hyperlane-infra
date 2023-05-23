#!/bin/bash


terraform output -json | jq '{ relayer_info: .relayer_info.value, validator_info: .validator_info.value }' > outputs.json 