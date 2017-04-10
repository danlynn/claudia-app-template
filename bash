#!/usr/bin/env bash

./synctime

docker run --rm -ti -v "$(pwd):/myapp" -v "$(pwd)/.aws:/root/.aws" -e "AWS_PROFILE=claudia" danlynn/claudia:2.9.0 bash
