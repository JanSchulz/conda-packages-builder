#!/usr/bin/env bash

# NOTE: This script has been automatically generated by github.com/conda-forge/conda-smithy/...

FEEDSTOCK_ROOT=$(cd "$(dirname "$0")/.."; pwd;)
RECIPE_ROOT=$FEEDSTOCK_ROOT/

docker info

config=$(cat <<CONDARC

channels:

 - janschulz

 - defaults # As we need conda-build
 - conda-forge # As we need conda-buildall

conda-build:
 root-dir: /feedstock_root/build_artefacts

show_channel_urls: True

CONDARC
)

cat << EOF | docker run -i \
                        -v ${RECIPE_ROOT}:/recipe_root \
                        -v ${FEEDSTOCK_ROOT}:/feedstock_root \
                        -a stdin -a stdout -a stderr \
                        pelson/obvious-ci:latest_x64 \
                        bash || exit $?

export BINSTAR_TOKEN=${BINSTAR_TOKEN}
export PYTHONUNBUFFERED=1

echo "$config" > ~/.condarc
# A lock sometimes occurs with incomplete builds. The lock file is stored in build_artefacts.
conda clean --lock

conda info



# Embarking on 0 case(s).


EOF
