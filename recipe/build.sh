#!/bin/bash

set -euxo pipefail

if [[ "${target_platform}" == "osx-arm64" ]]; then
  # FIXME: basic_check_build() does not work when cross compiling
  # Tracked in https://github.com/alkaline-ml/pmdarima/issues/503
  sed -i 's/basic_check_build()//' pmdarima/_build_utils/__init__.py
fi

$PYTHON -m pip install --no-deps -vv .
