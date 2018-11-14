#!/usr/bin/env fish

function spotoff --description 'toggle spotlight indexing off'
  switch (uname)
  case Darwin
    sudo mdutil -a -i off
  case '*'
    echo Mac OS X only command.
  end
end
