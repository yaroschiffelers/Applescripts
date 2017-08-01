-- Spotify On/Off Switch 
--
-- Checks whether or not Spotify is active; if so, quits Spotify. If not, activates Spotify.
-- 
-- Yaro Schiffelers | 06/2017
-- https://github.com/yaroschiffelers

tell application "System Events"
	get name of every process whose name is "Spotify"
	
	if result is not {} then
		
		tell application "Spotify"
			quit
		end tell
		
	else
		
		tell application "Spotify"
			activate
		end tell
		
	end if
	
end tell