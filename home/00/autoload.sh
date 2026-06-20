#!/usr/bin/env bash
########################################
# autoload script after login bash once (global)
########################################


root_dir=$(dirname "$(realpath "${BASH_SOURCE[0]}")")

source ${root_dir}/autoload/export.sh
source ${root_dir}/autoshll/path.sh

source ${root_dir}/autoload/term.sh


