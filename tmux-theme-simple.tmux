#!/bin/bash

simple_black="#32302f"
simple_blue="#719cd6"
simple_white="#aab2bf"
simple_light_green="#6abf69"
simple_green="#255d00"

set() {
   local option=$1
   local value=$2
   tmux set-option -gq "$option" "$value"
}

setw() {
   local option=$1
   local value=$2
   tmux set-window-option -gq "$option" "$value"
}

set "status" "on"
set "status-justify" "left"

set "status-left-length" "100"
set "status-right-length" "100"
set "status-right-attr" "none"

set "status-bg" "$simple_green"
set "status-fg" "$simple_white"

set "status-right" "#[fg=$simple_black,bg=$simple_light_green,bold] #h "
set "status-left"  "#[fg=$simple_black,bg=$simple_light_green,bold] #S #[fg=$simple_white,bg=$simple_green,bold] "

set "window-status-format"         "#[fg=$simple_white,bg=$simple_green] #I: #W#F "
set "window-status-current-format" "#[fg=$simple_black,bg=$simple_light_green] #I: #W#F "
