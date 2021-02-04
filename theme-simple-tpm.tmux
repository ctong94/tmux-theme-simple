#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
THEME_OPTION="@tmux-theme-simple"

main() {
    tmux source-file "$CURRENT_DIR/tmux-theme-simple.conf"
}

main
