-- Spotify Playlist Player
--
-- Checks whether or not Spotify is active; if so, it plays the playlist specified in playlistUrl. If not, the script activates Spotify, waits untill Spotify is finished launching, then plays the playlist.
-- 
-- Yaro Schiffelers | 06/2017
-- https://github.com/yaroschiffelers
--
-- Put your Spotify URL down here: 
set playlistUrl to "spotify:user:spotify:playlist:37i9dQZF1DWXCIgX3kyeVF"
--

tell application "System Events"
	get name of every process whose name is "Spotify"
	
	if result is not {} then
		
		tell application "Spotify"
			set shuffling to false
			set shuffling to true
			play track my playlistUrl
		end tell
		
	else
		
		tell application "Spotify" to launch
		delay 4 -- edit the delay value if necessary
		tell application "Spotify"
			set shuffling to false
			set shuffling to true
			play track my playlistUrl
		end tell
	end if
	
end tell