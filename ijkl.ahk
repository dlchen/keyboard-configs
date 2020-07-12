; Based off of https://github.com/madslundt/keybindings#windows

; Caps + ijkl for as arrow keys
; ` becomes Esc (Caps + ` for actual `)
; Caps + u / Caps + o for Home and End respectively
; Caps + p / Caps + ; for PgUp and PgDown respectively

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.

SetCapsLockState, AlwaysOff ; Disable CapsLock

`::Escape

CapsLock & `::`

CapsLock & i::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +!{Up}
    else if GetKeyState("Ctrl", "D")
        Send +^{Up}
    else
        Send +{Up}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Up}
    else
        Send ^{Up}
else if GetKeyState("Alt", "D")
    Send !{Up}
else
    Send {Up}
return

CapsLock & k::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +!{Down}
    else if GetKeyState("Ctrl", "D")
        Send +^{Down}
    else
        Send +{Down}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Down}
    else
        Send ^{Down}
else if GetKeyState("Alt", "D")
    Send !{Down}
else
    Send {Down}
return

CapsLock & j::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +!{Left}
    else if GetKeyState("Ctrl", "D")
        Send +^{Left}
    else
        Send +{Left}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Left}
    else
        Send ^{Left}
else if GetKeyState("Alt", "D")
    Send !{Left}
else
    Send {Left}
return

CapsLock & l::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +!{Right}
    else if GetKeyState("Ctrl", "D")
        Send +^{Right}
    else
        Send +{Right}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Right}
    else
        Send ^{Right}
else if GetKeyState("Alt", "D")
    Send !{Right}
else
    Send {Right}
return

CapsLock & u::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +!{Home}
    else if GetKeyState("Ctrl", "D")
        Send +^{Home}
    else
        Send +{Home}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Home}
    else
        Send ^{Home}
else if GetKeyState("Alt", "D")
    Send !{Home}
else
    Send {Home}
return

CapsLock & o::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +!{End}
    else if GetKeyState("Ctrl", "D")
        Send +^{End}
    else
        Send +{End}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{End}
    else
        Send ^{End}
else if GetKeyState("Alt", "D")
    Send !{End}
else
    Send {End}
return

CapsLock & p:: send, {PgUp}
CapsLock & `;:: send, {PgDn}

return
