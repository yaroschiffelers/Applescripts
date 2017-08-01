-- Spotify Next Track
--
-- Plays previous Spotify track. Does nothing if Spotify is not active.
-- 
-- Yaro Schiffelers | 06/2017
-- https://github.com/yaroschiffelers

tell application "System Events"
	get name of every process whose name is "Spotify"
	
	if result is not {} then
		
		tell application "Spotify"
			previous track
		end tell
		
	else
		
	end if
	
end tell