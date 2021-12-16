#!/usr/bin/env bash

if [[ -n "$SOUND_DISABLE_MOPIDY" ]]; then
	echo "Mopidy is disabled, exiting..."
	exit 0
fi

set -- /usr/bin/mopidy \
	--config /config/mopidy.cfg \
	"$@"

exec "$@"
