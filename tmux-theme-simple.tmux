#!/bin/bash

simple_black="#32302f"
simple_blue="#719cd6"
simple_yellow="#e5c07b"
simple_red="#e06c75"
simple_white="#aab2bf"
simple_light_green="#6abf69"
simple_green="#255d00"
simple_grey="#373737"

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

set "message-fg" "$simple_white"
set "message-bg" "$simple_black"

set "message-command-fg" "$simple_white"
set "message-command-bg" "$simple_black"

set "status-attr" "none"
set "status-left-attr" "none"

setw "window-status-fg" "$simple_black"
setw "window-status-bg" "$simple_black"
setw "window-status-attr" "none"

setw "window-status-activity-bg" "$simple_black"
setw "window-status-activity-fg" "$simple_black"
setw "window-status-activity-attr" "none"

setw "window-status-separator" ""

set "window-style" "fg=$simple_grey"
set "window-active-style" "fg=$simple_white"

set "pane-border-fg" "$simple_white"
set "pane-border-bg" "$simple_black"
set "pane-active-border-fg" "$simple_blue"
set "pane-active-border-bg" "$simple_black"

set "display-panes-active-colour" "$simple_yellow"
set "display-panes-colour" "$simple_green"

set "status-bg" "$simple_green"
set "status-fg" "$simple_white"

set "status-right" "#[fg=$simple_black,bg=$simple_light_green,bold] #h "
set "status-left"  "#[fg=$simple_black,bg=$simple_light_green,bold] #S #[fg=$simple_white,bg=$simple_green,bold] "

set "window-status-format"         "#[fg=$simple_white,bg=$simple_green] #I: #W#F "
set "window-status-current-format" "#[fg=$simple_black,bg=$simple_light_green] #I: #W#F "
