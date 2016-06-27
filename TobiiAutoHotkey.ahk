; Match part of window title
SetTitleMatchMode, 2

; F8+F9 is Home and End (Apple keyboard has no Home and End keys)
F8::Send {Home}
F9::Send {End}

; Speak "yes" and "no" samples using back+forward mouse button or F11+F12
F11::SoundPlay, SoundYes.wav
F12::SoundPlay, SoundNo.wav
XButton1::SoundPlay, SoundYes.wav
XButton2::SoundPlay, SoundNo.wav

; Only applicable if Tobii is active
#IfWinActive Communicator
RButton::Send {Backspace} ; Backspace
MButton::Send {NumpadDiv} ; Speak last sentence
F10::Send {NumpadDiv}     ; Speak last sentence
WheelDown::Send {Right}   ; Cursor to right
WheelUp::Send {Left}      ; Cursor to left
Numpad0::Send {NumpadDiv} ; Speak last sentence, for remote control
