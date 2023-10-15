;;# mkbx By Ballganda
;;Macro Keyboard X

;;A combination of HIDmacros and AutoHotkey
;;88 keys assignable to ahk scripts on additonal 104 keyboards
;;Credit: Inspired by @taranvh and his/ltts videos Link to Taran's work:
;;https://github.com/TaranVH/2nd-keyboard/tree/master/HASU_USB

;;What in tarnation have you bodged here
;;-----------------------------------------------------------------------
;;This script set is to put your macro hotkeys on a key of additonal keyboard/s
;;This method uses a HIDmacros user instance setup to prefix keys on 
;;additional keyboards with F24-F13. Using free software with only the cost
;;of the additional keyboard/s.


;;I didn't look much into what is going on here. Sounded good in the AHK help
;;-----------------------------------------------------------------------
#MaxHotkeysPerInterval 2000 ;;specifies the rate of hotkey activations beyond which a warning dialog will be displayed. 
#SingleInstance force ;;Determines whether a script is allowed to run again when it is already running.
#WinActivateForce ;;Skips the gentle method of activating a window and goes straight to the forceful method
#NoEnv ;;Avoids checking empty variables to see if they are environment variables
#InstallKeybdHook ;;Forces the unconditional installation of the keyboard hook.
;;#InstallMouseHook ;;Forces the unconditional installation of the mouse hook
#UseHook On ;;Forces the use of the hook to implement all keyboard hotkeys

;;Here we go
;;-----------------------------------------------------------------------
;;Set prefix detection var to 0
prefix:=0

;;Detect Fxx prefix up event. HIDmacros sends press and up.
;;Up event is closest to the next key HIDmacros sends.
;;HIDmacros is to send for example the key below(way down) q as {F24}q

*F24 up::
prefix:=24
return

*F23 up::
prefix:=23
return

*F22 up::
prefix:=22
return

;;Clear those nasty tooltips with the escape key on any keyboard.
esc::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0
send, {esc}
sleep 500
tooltip,
return

;;######################################################
;; Enter the normal keyboard 
;;######################################################
#if (prefix = 0)
{
;; Place hotkeys for normal keyboard here
;; Left this blank bc this is normal and not what this config is about
;;###############################
;; Here is where you script
;;###############################

;;###############################
return
} ;; End of normal keyboard assignments

;;######################################################
;; Enter the F24 keyboard 
;;######################################################

#if (prefix = 24)
{
;;*************************
;;Row 1
;;*************************

*F1:: ;;Wild card used. See F2 examples for more info
tooltip, [F%prefix%] %A_thishotKey% ;;tooltip on all keys
prefix:=0 ;;required reset of the prefix var
;;###############################
;; Here is where you script
;;###############################

;;###############################
return ;; return out of IF after the hotkey is done

;; If assigning modifiers you should to do something with all modifier options.
;; Just having the macro do the prefix:=0 is enough. If you leave a modifier
;; option unassigned the F%prefix% is primed and not reset to 0 by a macro.
;; The next key you press will run the macro of the that F%prefix% key even if
;; it is on the normal keyboard. BAD!!

;; F2 Examples with modifiers
;; First remove the * wild card from F2
F2::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;; Can assign left and right modifiers separately
;; If one side is assigned, assign the other to at least reset prefix:=0
;; Example adding CTRL modifier hotkey
^F2::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;; Example adding SHIFT modifier hotkey
+F2::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;; WIN modifier does not work
;; ALT modifier does not work
#F2::
!F2::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;; All keys not having modifiers setup have the wildcard * so
;; the key assigned macro is always ran and prefix:=0 always gets set. 

*F3::
*F4::
*F5::
*F6::
*F7::
*F8::
*F9::
*F10::
*F11::
*F12::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Row 2
;;*************************

*`::
*1::
*2::
*3::
*4::
*5::
*6::
*7::
*8::
*9::
*0::
*-::
*=::
*backspace::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Row 3
;;*************************

*tab::
*q::
*w::
*e::
*r::
*t::
*y::
*u::
*i::
*o::
*p::
*[::
*]::
*\::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Row 4
;;*************************

*a::
*s::
*d::
*f::
*g::
*h::
*j::
*k::
*l::
*`;::
*'::
*enter::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Row 5
;;*************************

*z::
*x::
*c::
*v::
*b::
*n::
*m::
*,::
*.::
*/::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Row 6
;;*************************

*space::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Insert area
;;*************************

*insert::
*delete::
*home::
*end::
*pgup::
*pgdn::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Arrow area
;;*************************

*up::
*down::
*left::
*right::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Numpad area
;;*************************

*numpad0::
*numpad1::
*numpad2::
*numpad3::
*numpad4::
*numpad5::
*numpad6::
*numpad7::
*numpad8::
*numpad9::
*numpadDiv::
*numpadMult::
*numpadSub::
*numpadAdd::
*numpadDot::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;The numpad enter is the same as a regular enter with this method

} ;;End of Fxx hotkeys assignment

;;######################################################
;; Enter the F23 keyboard 
;;######################################################

#if (prefix = 23)
{
;;*************************
;;Row 1
;;*************************

*F1::
*F2::
*F3::
*F4::
*F5::
*F6::
*F7::
*F8::
*F9::
*F10::
*F11::
*F12::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Row 2
;;*************************

*`::
*1::
*2::
*3::
*4::
*5::
*6::
*7::
*8::
*9::
*0::
*-::
*=::
*backspace::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Row 3
;;*************************

*tab::
*q::
*w::
*e::
*r::
*t::
*y::
*u::
*i::
*o::
*p::
*[::
*]::
*\::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Row 4
;;*************************

*a::
*s::
*d::
*f::
*g::
*h::
*j::
*k::
*l::
*`;::
*'::
*enter::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Row 5
;;*************************

*z::
*x::
*c::
*v::
*b::
*n::
*m::
*,::
*.::
*/::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Row 6
;;*************************

*space::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Insert area
;;*************************

*insert::
*delete::
*home::
*end::
*pgup::
*pgdn::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Arrow area
;;*************************

*up::
*down::
*left::
*right::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Numpad area
;;*************************

*numpad0::
*numpad1::
*numpad2::
*numpad3::
*numpad4::
*numpad5::
*numpad6::
*numpad7::
*numpad8::
*numpad9::
*numpadDiv::
*numpadMult::
*numpadSub::
*numpadAdd::
*numpadDot::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;The numpad enter is the same as a regular enter with this method

} ;;End of Fxx hotkeys assignment

;;######################################################
;; Enter the F22 keyboard 
;;######################################################

#if (prefix = 22)
{
;;*************************
;;Row 1
;;*************************

*F1::
*F2::
*F3::
*F4::
*F5::
*F6::
*F7::
*F8::
*F9::
*F10::
*F11::
*F12::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Row 2
;;*************************

*`::
*1::
*2::
*3::
*4::
*5::
*6::
*7::
*8::
*9::
*0::
*-::
*=::
*backspace::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Row 3
;;*************************

*tab::
*q::
*w::
*e::
*r::
*t::
*y::
*u::
*i::
*o::
*p::
*[::
*]::
*\::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Row 4
;;*************************

*a::
*s::
*d::
*f::
*g::
*h::
*j::
*k::
*l::
*`;::
*'::
*enter::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Row 5
;;*************************

*z::
*x::
*c::
*v::
*b::
*n::
*m::
*,::
*.::
*/::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Row 6
;;*************************

*space::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Insert area
;;*************************

*insert::
*delete::
*home::
*end::
*pgup::
*pgdn::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Arrow area
;;*************************

*up::
*down::
*left::
*right::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;*************************
;;Numpad area
;;*************************

*numpad0::
*numpad1::
*numpad2::
*numpad3::
*numpad4::
*numpad5::
*numpad6::
*numpad7::
*numpad8::
*numpad9::
*numpadDiv::
*numpadMult::
*numpadSub::
*numpadAdd::
*numpadDot::
tooltip, [F%prefix%] %A_thishotKey%
prefix:=0 
return

;;The numpad enter is the same as a regular enter with this method

} ;;End of Fxx hotkeys assignment
