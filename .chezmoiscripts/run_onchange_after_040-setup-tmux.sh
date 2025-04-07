#!/bin/bash
setup_tmux() {
    # setup tpm

    if [ ! -f ~/.tmux/plugins/tpm/README.md ]; then
        git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
        ~/.tmux/plugins/tpm/scripts/install_plugins.sh
    else
        echo "tpm already exists, skip"
    fi
}

setup_tmux
