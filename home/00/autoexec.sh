#!/usr/bin/env bash
########################################
# autoexec script after sway once
########################################


root_dir=$(dirname "$(realpath "${BASH_SOURCE[0]}")")

${root_dir}/autoexec/sway.sh &
${root_dir}/autoexec/mode.sh &

# ${root_dir}/autoexec/kill.sh
#
# ${root_dir}/autoexec/sway.sh &
# ${root_dir}/autoexec/sfwr.sh &
#
# ${root_dir}/autoexec/rest.sh &


