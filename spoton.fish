#!/usr/bin/env fish

function spoton --description 'toggles spotlight indexing on'
  switch (uname)
  case Darwin
    sudo mdutil -a -i on
  case '*'
    echo MacOS only command
  end
end
