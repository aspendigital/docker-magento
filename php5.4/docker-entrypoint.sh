#!/bin/bash
set -e

if [ -d ".modman" ]; then
  modman repair
fi

exec "$@"
