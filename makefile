all:
	lilypond --loglevel=ERROR --output=ClerwyrCrwydro ./ClerwyrCrwydro.ly
	lilypond --loglevel=ERROR --output=PetterKeys ./PetterKeys.ly

wip:
	clear
	lilypond wip.ly
