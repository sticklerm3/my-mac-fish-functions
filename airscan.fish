#!/usr/bin/env fish

function airscan --description 'perform a network scan using the airport utility'
  switch (uname)
  case Darwin
    airport -s
  case '*'
    echo MacOS command only!
  end
end
