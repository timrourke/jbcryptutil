#!/usr/bin/env bash

set -euo pipefail

docker run --rm -it jbcryptutil java -jar target/jbcryptutil-1.0-SNAPSHOT-jar-with-dependencies.jar "$@"

