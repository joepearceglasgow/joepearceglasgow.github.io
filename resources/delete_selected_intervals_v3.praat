####Delete selected intervals 
# version 3.0 
# Author: J Pearce
# Date: 27 May 2022
# Description: Script to remove boundaries and text of intervals selected
# Useful for correcting output of forced aligners, where the aligner has gone badly wrong and it is easier to discard than correct
# Instructions: This script runs from the EDITOR window
# You must have ONLY the TextGrid selected in the object window, and not the sound
# Select the portion between which you wish to delete boundaries/text 

start = Get start of selection

end = Get end of selection

endeditor

numberOfTiers = Get number of tiers

for tier from 1 to numberOfTiers

	startInterval = Get interval at time: tier, start
	endInterval = Get interval at time: tier, end

	interval = endInterval

	repeat 

		Remove left boundary: tier, interval
		interval = interval - 1

	until interval = startInterval
	
	Set interval text: tier, startInterval, ""
	
endfor

editor