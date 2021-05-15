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

;;Do I know what I am doing
;;-----------------------------------------------------------------------
;;No

;;Why no HASU Wrapper method from Taran
;;-----------------------------------------------------------------------
;;$$

;;What keys are not mappable
;;-----------------------------------------------------------------------
;;Esc, Caps Lock, Shiftx2, ctrlx2, Winx2, Altx2, Select, Print Screen, 
;;Scroll lock, Break, Numlock, and Keypad Enter is registred the same
;;as normal enter

;;How many keyboards can be added
;;-----------------------------------------------------------------------
;;I do not know the limit. 
;;F13-F24 is 12 so that is the limit of copy pasting this script
;;I only have 4 keyboards. I did basic testing with one regular + mkbx3
;;After F13-F24 are used up I do not know other prefix keys HIDmacros would
;;recognize. At that point I would attempt multiple prefix and nesting script

;;How many keyboards can be added
;;-----------------------------------------------------------------------
;;I did not try to script for modifiers. Single key for single macro

;;Quirks?
;;-----------------------------------------------------------------------
;;Windows calculator not compatible so I am sure other apps are not.
;;Use numlock always on else numpad keys become up, down, etc.
;;{anykey} up:: assignment is not really compatible because HIDmacros sends
;;the key event and the up event from software. As soon as you press a key
;;HIDmacros sends that key press followed by the up event. Additionally the
;;script here is not made compatible. 
;;If you hold down/abuse/spam the additional keyboard/s keys can get through
;;this interception method. If you spam the additional keyboard/s and your
;;regular keyboard at the same time your normal keyboard can intercept as a
;;macro key. 
;;Backspace and numpadMult require double click to work on additional keyboards
;;Have to plug same keyboard into the same USB port I believe for HIDmacros 
;;assignment to stay correct. May have to close and start HIDmacros again 
;;when replugging a keyboard in...If only I could use a hotkey on my main
;;keyboard to toggle HIDmacros in mkbx setup when I dock my laptop etc that
;;would fix this.

;;Is this likely to work for xyz use case and will I bug fix
;;-----------------------------------------------------------------------
;;No idea. No.
;;This is the first time I have ever installed AHK/HIDmacros I brute forced
;;this far with trial and error. I am using the additonal keyboards to work
;;with PTC CREO software 'mapkeys' to do tasks for me in CAD software. I made
;;this AHK script for the 'what if' I want to do more with my additional keyboard.
;;In my CREO use case HIDmacros alone could satisfy the task of sending key 
;;combos to trigger scripts I recorded/wrote in CREO's own 'mapkey' manager

;;Note on HIDmacros
;;-----------------------------------------------------------------------
;;HIDmacros must be run the first time as admin. Running as admin causes it not
;;to work in many apps. After initial as admin launch close HIDmacros and
;;reopen normal(as the user account you are on). Doing those steps
;;makes this mkbx setup work in more apps, notably M$ Excel
;;and Word.

;;Using outdated,not supported, now open source HIDmacros why?
;;-----------------------------------------------------------------------
;;HIDmacros seems to do the task of assigning prefix to keys on a specific
;;keyboard fine. If I could code I would take the open source code, strip
;;all the unused(for this) bits out of it and add in the options for prefix or
;;wrapper mode for keyboards. Would make it easier than copy pasting 1000+lines
;;of config file and replaces F13 with Fxx and keyboard name change. 
;;Keyboard list, test area, assign fxx to mkbx thats all 
;;that is used
