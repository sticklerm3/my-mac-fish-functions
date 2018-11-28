#!/usr/bin/env fish

function spotoff --description 'toggle spotlight indexing off'
  switch (uname)
  case Darwin
    sudo mdutil -a -i off
  case '*'
    echo MacOS only command.
  end
end
