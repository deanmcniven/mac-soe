#!/usr/bin/env bash

BOLD='\033[1m'
UNBOLD='\033[0m'

if ! command -v brew &> /dev/null; then
    echo -e "⛔️ ${BOLD}brew not found. Installing ...${UNBOLD}"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    exit 1
fi

if ! command -v ansible &> /dev/null; then
    echo -e "📦  ${BOLD}Installing Ansible${UNBOLD}"
    brew install ansible
fi

