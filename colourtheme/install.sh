#! /usr/bin/env bash

set -e



curl -XGET -vv https://codeload.github.com/dracula/terminal.app/zip/master -o $TMPDIR/Dracula.zip
unzip -o $TMPDIR/Dracula.zip -d $TMPDIR/Dracula/
open -a Terminal $TMPDIR/Dracula/**/*.terminal
osascript -e '
tell application "Terminal"
	 set default settings to settings set "Dracula"
end tell
'
