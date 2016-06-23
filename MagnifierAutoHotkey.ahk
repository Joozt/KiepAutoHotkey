; Match part of window title
SetTitleMatchMode, 2

; Open a file handle to stdout for debug logging
debug := FileOpen("*", "w")

; Infinite loop
while true 
{
	
	; Wait until Tobii Communicator becomes foreground
	WinWaitActive Communicator
	
	debug.WriteLine("Tobii is in foreground")
	debug.Read(0) 

	; Exits the magnifier tool (using Windows key + escape) if it exists
	IfWinExist ahk_exe Magnify.exe 
	{
		debug.WriteLine("Magnifier is running -> close")
		debug.Read(0) 
		
		Send #{Esc}	
	}
	
	; Wait until Tobii Communicator is no longer foreground
	WinWaitNotActive Communicator
	
	debug.WriteLine("Tobii is no longer in foreground")
	debug.Read(0) 
}