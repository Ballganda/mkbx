;;# mkbx
;;Macro Keyboard X

;;A combination of HIDmacros and AutoHotkey

;;88 keys assignable to ahk scripts on additonal 104 keyboards
;;By Richard Thomas

;;What is in the folder mkbx3
;;-----------------------------------------------------------------------
;;mkbx3 has the config for for HIDmacros to prefix 3 additional keyboard with F24, F23, F22
;;and the mkbx3 AutoHotkey base definition script to put your hotkey definition into

;;Why not one HIDmacros config file with everything defined up to mkbx12 
;;-----------------------------------------------------------------------
;;1000+lines per keyboard config in HIDmacros making the load times and close times
;;get greater and greater with each keyboard added

;;setup
;;-----------------------------------------------------------------------
;;Install AutoHotkey

;;Run HIDmacros once as admin and close

;;Delete hidmacros.xml from HIDmacros dir and rename hidmacros_mkbx3.xml to hidmacros.xml and place
;;it were the original hidmacros.xml file was in the HIDmacros dir.

;;Plug in additional keyboards before start HIDmacros as user not admin

;;Open HIDmacros as user not admin and use the test area to see the device name of the additional
;;keyboard you have. Example it may be "Keyb4".

;;In HIDmacros go to the Devices tab. Select "Keyb4" click on rename. Change the name
;;to mkb01 and click enter (mkb02 mkb03 ... depending on what number kb you are setting up)

;;In HIDmacros toggle between Devices and Macros tabs and see on Devices tab that next to mkb01
;;(or the mkb02/mkb03 if you setup all of them) it now has 88 macros. The kb name has to match
;;up with the predefined name in the config file to be successful.

;;In HIDmacros go to macros tab and look at the test area. Click any key on the mkbx keyboard you 
;;just setup and see that the device name is now what you just setup. Repeat keyboard renaming
;;for all keyboards you are setting up.

;;HIDmacros setup is done. Leave it running. can minimize or go to the settings tab in HIDmacros
;;and have it minimize to tray.

;;Now run the associated mkbx3.ahk file.

;;Done. Done. Now all the assignable keys on the mkbx you setup should have popup tool tips that
;;tell which keyboard was pressed and which key. Example mkb01 key 1 is "[F24] 1" tooltip. 
;;The Esc key on any keyboard clears the tooltips

;;Now it is up to you put in the script for what you want each key to do.

;;Good Luck -Richard
