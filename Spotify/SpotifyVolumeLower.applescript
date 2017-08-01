-- Spotify Volume Lower
--
-- Decrease volume of Spotify by -10. Does nothing if Spotify is not active.
-- 
-- Yaro Schiffelers | 06/2017
-- https://github.com/yaroschiffelers

tell application "System Events"
	get name of every process whose name is "Spotify"
	
	if result is not {} then
		
		tell application "Spotify"
			set currentvol to get sound volume
			
			if currentvol < 10 then
				set sound volume to 0
			else
				set sound volume to currentvol - 10
			end if
		end tell
		
	else
		
	end if
	
end tell