#!/usr/bin/env bash
########################################
# autoboot script before lemurs once
########################################


root_dir=$(dirname "$(realpath "${BASH_SOURCE[0]}")")
echo $root_dir
echo ======== ======== ======== ========

${root_dir}/autoboot/part.sh

${root_dir}/autoboot/lock.sh
${root_dir}/autoboot/color.sh


