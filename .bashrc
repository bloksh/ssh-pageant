#!/bin/sh

# FROM: https://github.com/git-for-windows/git/wiki/OpenSSH-Integration-with-Pageant

# ssh-pageant allows use of the PuTTY authentication agent (Pageant)
SSH_PAGEANT="$(command -v ssh-pageant)"
if [ -x "$SSH_PAGEANT" ]; then
	eval "$("$SSH_PAGEANT" -qra "${SSH_AUTH_SOCK:-${TEMP:-/tmp}/.ssh-pageant-$USERNAME}")"
fi
unset SSH_PAGEANT
