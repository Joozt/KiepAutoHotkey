; Match part of window title
SetTitleMatchMode, 2

; F8+F9 is Home and End (Apple keyboard has no Home and End keys)
F8::Send {Home}
F9::Send {End}


F10::Send {NumpadDiv}   ; Speak last sentence
F11::Send {NumpadMult}  ; Yes
F12::Send {NumpadSub}   ; No

XButton1::Send {NumpadMult}  ; Yes
XButton2::Send {NumpadSub}   ; No
;XButton1::SoundPlay, C:\yes.wav
;XButton2::SoundPlay, C:\no.wav


; Only applicable if Tobii is active
#IfWinActive Communicator
RButton::Send {Backspace} ; Backspace
MButton::Send {NumpadDiv} ; Speak last sentence
WheelDown::Send {Right}   ; Cursor to right
WheelUp::Send {Left}      ; Cursor to left
Numpad0::Send {NumpadDiv} ; Speak last sentence, for remote control
RWin::Send {NumpadAdd}    ; Use Right windows button for scanning
