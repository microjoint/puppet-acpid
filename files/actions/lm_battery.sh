#! /bin/sh

test -f /usr/bin/laptop_mode || exit 0

# Automatically disable laptop mode when the battery almost runs out,
# and re-enable it when it 

/usr/bin/laptop_mode auto
