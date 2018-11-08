#!/usr/bin/env fish

function fastbackup  --description 'setting to temporarily speed up backups'
    switch (uname)
    case Darwin
      sudo sysctl debug.lowpri_throttle_enabled=0
    case '*'
      echo MacOS only command
    end
end
