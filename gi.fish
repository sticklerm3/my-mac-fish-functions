#!/usr/bin/env/fish

function gi --description "A function to add a gitignore using the gitignore-io API"
  curl -L -s https://www.gitignore.io/api/$argv;
end
