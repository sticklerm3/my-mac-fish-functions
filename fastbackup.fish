#!/usr/bin/env fish

function fastbackup  --description 'setting to temporarily speed up backups'
  sudo sysctl debug.lowpri_throttle_enabled=0
end
