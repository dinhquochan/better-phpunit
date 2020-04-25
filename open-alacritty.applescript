on runTest(_command)
	tell application "Alacritty" to activate

	tell application "System Events"
        repeat until exists window 1 of process "Alacritty"
            delay 0.1
        end repeat

        keystroke "k" using {command down}
        keystroke "u" using {control down}

        keystroke _command
        keystroke return
    end tell
end runTest

on run argv
	set _command to item 1 of argv
	runTest(_command)
end run
