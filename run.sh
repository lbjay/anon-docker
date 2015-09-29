#!/bin/bash

# Fail fast, including pipelines
set -e -o pipefail

DEFAULT_ANON_CONFIG_URL="https://raw.githubusercontent.com/edsu/anon/master/config.json.template"

ANON_CONFIG_URL=${ANON_CONFIG_URL:-${DEFAULT_ANON_CONFIG_URL}}

curl -s -o /opt/anon/anon/config.json "${ANON_CONFIG_URL}"

# additional options, e.g., --verbose or --noop, will be passed along
coffee anon.coffee "$@"
