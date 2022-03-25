#!/bin/bash

simple_black="#282c34"
simple_blue="#719cd6"
simple_yellow="#e5c07b"
simple_red="#e06c75"
simple_white="#aab2bf"
simple_green="#98c379"
simple_visual_grey="#3e4452"
simple_comment_grey="#5c6370"

get() {
   local option=$1
   local default_value=$2
   local option_value="$(tmux show-option -gqv "$option")"

   if [ -z "$option_value" ]; then
      echo "$default_value"
   else
      echo "$option_value"
   fi
}

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

set "status-position" "top"

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

set "window-style" "fg=$simple_comment_grey"
set "window-active-style" "fg=$simple_white"

set "pane-border-fg" "$simple_white"
set "pane-border-bg" "$simple_black"
set "pane-active-border-fg" "$simple_blue"
set "pane-active-border-bg" "$simple_black"

set "display-panes-active-colour" "$simple_yellow"
set "display-panes-colour" "$simple_green"

set "status-bg" "$simple_black"
set "status-fg" "$simple_white"

set "@prefix_highlight_fg" "$simple_black"
set "@prefix_highlight_bg" "$simple_blue"
set "@prefix_highlight_copy_mode_attr" "fg=$simple_black,bg=$simple_blue"
set "@prefix_highlight_output_prefix" "  "

status_widgets=$(get "@simple_widgets")
time_format=$(get "@simple_time_format" "%R")
date_format=$(get "@simple_date_format" "%d/%m/%Y")

set "status-right" "#[fg=$simple_white,bg=$simple_black,nounderscore,noitalics]${time_format}  ${date_format} #[fg=$simple_visual_grey,bg=$simple_black]#[fg=$simple_visual_grey,bg=$simple_visual_grey]#[fg=$simple_white, bg=$simple_visual_grey]${status_widgets} #[fg=$simple_blue,bg=$simple_visual_grey,nobold,nounderscore,noitalics]#[fg=$simple_black,bg=$simple_blue,bold] #h #[fg=$simple_yellow, bg=$simple_blue]#[fg=$simple_red,bg=$simple_yellow]"
set "status-left" "#[fg=$simple_black,bg=$simple_blue,bold] #S #{prefix_highlight}#[fg=$simple_blue,bg=$simple_black,nobold,nounderscore,noitalics]"

set "window-status-format" "#[fg=$simple_black,bg=$simple_black,nobold,nounderscore,noitalics]#[fg=$simple_white,bg=$simple_black] #I  #W #[fg=$simple_black,bg=$simple_black,nobold,nounderscore,noitalics]"
set "window-status-current-format" "#[fg=$simple_black,bg=$simple_visual_grey,nobold,nounderscore,noitalics]#[fg=$simple_white,bg=$simple_visual_grey,nobold] #I  #W #[fg=$simple_visual_grey,bg=$simple_black,nobold,nounderscore,noitalics]"
