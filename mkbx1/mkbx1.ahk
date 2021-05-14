;;# mkbx
;;Macro Keyboard X

;;A combination of HIDmacros and AutoHotkey

;;88 keys assignable to ahk scripts on additonal 104 keyboards
;;By Richard Thomas

;;Credit: Inspired by @taranvh and his/ltts videos Link to Taran's work:
;;https://github.com/TaranVH/2nd-keyboard/tree/master/HASU_USB

;;What in tarnation have you bodged here
;;-----------------------------------------------------------------------
;;This script set is to put your macro hotkeys on a key of additonal keyboard/s
;;This method uses a HIDmacros user instance setup to prefix keys on 
;;additional keyboards with F13-Fxx. Using free software with only the cost
;;of the additional keyboard/s.


;;I didn't look much into what is going on here
;;-----------------------------------------------------------------------
#MaxHotkeysPerInterval 2000 ;;specifies the rate of hotkey activations beyond which a warning dialog will be displayed. 
#SingleInstance force ;;Determines whether a script is allowed to run again when it is already running.
#WinActivateForce ;;Skips the gentle method of activating a window and goes straight to the forceful method
#NoEnv ;;Avoids checking empty variables to see if they are environment variables
;;I do not know if #InstallKeybdHook is needed, I did most testing without
#InstallKeybdHook ;;Forces the unconditional installation of the keyboard hook.
;;#InstallMouseHook ;;Forces the unconditional installation of the mouse hook
#UseHook On ;;Forces the use of the hook to implement all or some keyboard hotkeys

;;Here we go
;;-----------------------------------------------------------------------
;;Set prefix detection var to 0
prefix:=0

;;Detect Fxx prefix up event. HIDmacros sends press and up.
;;Up event is closest to the next key HIDmacros sends.
;;HIDmacros is to send for example the key below(way down) q as {F13}q

F13 up::
prefix:=13
return

;;Clear those nasty tooltips with the escape key on a "normal" keyboard.
;;Except its a macro of itself now...
if (prefix = 0)
{
esc::
send, {esc}
tooltip,
return
}

;;######################################################
;; Enter the Fxx keyboard 
;;######################################################

#if (prefix = 13)
{

;;*************************
;;Row 1
;;*************************

;;esc did not play ball. So I cut it out of additional keyboards
;;esc from all keyboards used to clear tooltips if you leave them in.

F1::
tooltip, [F%prefix%] %A_thishotKey% ;;optional tooltip
prefix:=0 ;;required reset of the prefix var
;;###############################
;; Here it where you script
;;###############################

;;###############################
return

F2::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

F3::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

F4::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

F5::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

F6::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

F7::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

F9::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

F8::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

F10::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

F11::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

F12::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Row 2
;;*************************

`::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

1::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

2::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

3::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

4::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

5::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

6::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

7::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

8::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

9::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

0::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

-::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

=::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;Baskspace sorta works it takes a double click for some reason to get it going.
;;First Bksp is blocked, second fires script. Sketchy bodge.
backspace::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Row 3
;;*************************

tab::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

q::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

w::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

e::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

r::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

t::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

y::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

u::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

i::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

o::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

p::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

[::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

]::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

\::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Row 4
;;*************************

a::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

s::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

d::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

f::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

g::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

h::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

j::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

k::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

l::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

`;::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

'::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

enter::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Row 5
;;*************************

z::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

x::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

c::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

v::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

b::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

n::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

m::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

,::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

.::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

/::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Row 6
;;*************************

space::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Insert area
;;*************************

insert::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

delete::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

home::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

end::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

pgup::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

pgdn::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Arrow area
;;*************************

up::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

down::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

left::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

right::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Numpad area
;;*************************

numpad0::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

numpad1::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

numpad2::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

numpad3::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

numpad4::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

numpad5::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

numpad6::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

numpad7::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

numpad8::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

numpad9::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

numpadDiv::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;numpadMult sorta works it takes a double click for some reason to get it going.
;;First numpadMult is blocked, second fires script. Sketchy bodge.
numpadMult::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

numpadSub::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

numpadAdd::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

numpadDot::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;The numpad enter is the same as a regular enter with this method

} ;;End of Fxx hotkeys assignment

;;######################################################
;; End of the Fxx keyboard
;;######################################################