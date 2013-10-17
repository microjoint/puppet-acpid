#! /bin/sh

test -f /usr/bin/laptop_mode || exit 0

# lid button pressed/released event handler

/usr/bin/laptop_mode auto
