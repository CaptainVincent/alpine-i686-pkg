#!/bin/sh

# Immediately bail out if any command fails:
set -e

work_dir=$(dirname "$(readlink -f "$0")")

mkdir -p $work_dir/.local/share/Tachidesk
curl -s --create-dirs -L https://github.com/Suwayomi/Tachidesk-Server/releases/download/v0.7.0/Tachidesk-Server-v0.7.0-r1197.jar -o $work_dir/tachidesk_latest.jar