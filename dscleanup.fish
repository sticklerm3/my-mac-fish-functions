# Recursively delete .DS_Store files
function dscleanup -d 'recursively deletes .DS_Store files'
  switch (uname)
  case Darwin
    find . -type f -name "*.DS_Store" -ls -delete
  case '*'
    echo MacOs only command.
  end
end
