#!/usr/bin/env fish

function tmstatus -d 'prints the satus of tmutil'
  switch (uname)
  case Darwin
    tmutil status
  case '*'
    echo Mac OS X only command.
  end
end
