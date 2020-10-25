#SingleInstance Force

MsgBox, 0, Information, Press "Z" to start the bot!`nPress "Strg+Alt+P" to stop
z::
    if (GetKeyState("LButton"))
    {
        toggle := 0
        Send % "{Click Up}"
        Send % "{w Up}"
        Send % "{Ctrl Up}"
        BlockInput, MouseMoveOff
    } 
    else 
    {
        Send % "{Click Down}"
        Send % "{w Down}"
        Send % "{Ctrl Down}"
        BlockInput, MouseMove
        toggle := 1
        if (toggle) 
            SetTimer, loop, -1 
    }
return

loop:
    while (toggle == "1") 
    {
        MouseMove, 1, 0, 10, R
        MouseMove, -1, 0, 10, R
        MouseMove, 1, 0, 10, R
        Sleep, 700 
    }
return

^!p::
    toggle := 0
    ExitApp
return
    