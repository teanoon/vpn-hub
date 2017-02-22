#!/bin/bash

# start service
service expressvpn restart

# activate
if [ ! -f /var/lib/expressvpn/userdata2.dat ]; then
  ACTIVATE=$(expect -c '
    spawn expressvpn activate
    expect {
      code:        { send "$env(EXPRESSVPN_ACTIVATION_CODE)\r" }
    }
    expect {
      anonymous:   { send "n\r" }
      eof
    }
    expect {
      Logout:      { send "N\r" }
      eof
    }
    puts "Finished OK\n"
  ')

  echo "$ACTIVATE"
fi

# command
exec "$@"
