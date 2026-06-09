#!/usr/bin/env bash


SESSION_ID="$XDG_SESSION_ID"
SESSION_SERVICE=$(loginctl show-session "$SESSION_ID" -p Service --value)
echo "$SESSION_SERVICE"
sleep 0.2

if [ "$SESSION_SERVICE" = "login" ]; then
  loginctl terminate-session "$SESSION_ID"
else
  systemctl restart display-manager
fi


