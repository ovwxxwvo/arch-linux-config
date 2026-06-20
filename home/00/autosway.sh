#!/usr/bin/env bash
########################################
# autoexec script after sway reload
########################################


root_dir=$(dirname "$(realpath "${BASH_SOURCE[0]}")")

${root_dir}/autosway/kill.sh

${root_dir}/autosway/sway.sh &
${root_dir}/autosway/sfwr.sh &

${root_dir}/autosway/rest.sh &


