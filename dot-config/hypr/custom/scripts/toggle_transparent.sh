#!/usr/bin/env bash

CONF=~/.config/hypr/custom/rules.conf

if grep -q "windowrulev2 = opacity 0.89 override 0.83 override" "$CONF"; then
  sed -i 's/windowrulev2 = opacity 0.89 override 0.83 override/windowrulev2 = opacity 1/' "$CONF"
else
  sed -i 's/windowrulev2 = opacity 1/windowrulev2 = opacity 0.89 override 0.83 override/' "$CONF"
fi

hyprctl reload
