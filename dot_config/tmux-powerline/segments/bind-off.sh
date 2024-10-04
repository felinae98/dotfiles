run_segment() {
    [ $(tmux show-option -qv key-table) = 'off' ] && echo 'OFF'
}
