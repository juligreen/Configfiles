#!/bin/sh
set -eu

export RESTIC_PASSWORD=$(gopass show -o Account/plexiglas.xyz/juligreen)

restic -r /hdd/backup/ --verbose backup /rclone/other_data/
