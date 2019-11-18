& "C:\Program Files (x86)\LilyPond\usr\bin\lilypond.exe" --f=pdf -dno-point-and-click -djob-count=4 ClerwyrCrwydro.ly

if (Test-Path WorkInProgress.pdf)
{
	Remove-Item WorkInProgress.pdf
}