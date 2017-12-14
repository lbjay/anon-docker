#!/bin/bash

# Fail fast, including pipelines
set -e -o pipefail

DEFAULT_ANON_CONFIG_URL="https://raw.githubusercontent.com/edsu/anon/master/config.json.template"

ANON_CONFIG_URL=${ANON_CONFIG_URL:-${DEFAULT_ANON_CONFIG_URL}}

if [ ! -e /opt/anon/anon/config.json ]; then
    curl -s -o /opt/anon/anon/config.json "${ANON_CONFIG_URL}"
fi

# additional options, e.g., --verbose or --noop, will be passed along
./anon.js "$@"
