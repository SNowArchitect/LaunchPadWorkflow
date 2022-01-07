#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; List of variables 
timeURL1 := "TIMECARD URL"
timeURL2 := "TIMECARD URL"




^F9::
Run chrome.exe "https://SERVICENOW URL/login.do?user_name=USER EMAIL&sys_action=sysverb_login&user_password=PASSWORD" " --new-window "
return

;^a::Send, Hello SUPER USER 

;::gr::GlideRecord


^F1::Send, Lets go


^F12:: ;displays the name of a window
WinGetTitle, title, A
MsgBox, "%title%"
return

;^F11::
WinClose, NAME OF WINDOW
return

^F10::
if WinExist("NAME OF WINDOW")
{
WinActivate ; Use the window found by WinExist.
return
}

^F8::
wTitle := "Microsoft Teams"
SetTitleMatchMode, 2 ; contains the 
;if WinExist(wTitle)
if WinExist("Microsoft Teams")
{
WinActivate 
return
}



^!1:: ;CTRL+ALT+1 Launches dev
Run chrome.exe "DEV INSTANCE URL" " --new-window "
return

^!2:: ;CTRL+ALT+1 Launches test
Run chrome.exe "TEST INSTANCE URL" " --new-window "
return

^!3::
Run "C:\Users\NAME OF FOLDER\AppData\Local\Programs\Microsoft VS Code\Code.exe"
return

^!4::
Run chrome.exe %timeURL1% %timeURL2%
return

;^!5::
;Run chrome.exe %timeURL1% %timeURL2%
;return

;^!6::
;Run chrome.exe %timeURL1% %timeURL2%
;return

;^!7::
;Run chrome.exe %timeURL1% %timeURL2%
;return

;^!8::
;Run chrome.exe %timeURL1% %timeURL2%
;return

;^!9::
;Run chrome.exe %timeURL1% %timeURL2%
;return

;^!0::
;Run chrome.exe %timeURL1% %timeURL2%
;return

^!W::
Run Chrome.exe
return

^!Q::CloseAllInstances( "chrome.exe" )
return


CloseAllInstances( exename )
{
    WinGet LhWnd, List, % "ahk_exe " exename
    Loop, %LhWnd%
        PostMessage, 0x112, 0xF060,,, % "ahk_id " LhWnd%A_Index%
}

;keyword trigger
::rnote:: 
Run Notepad
return

;MS TEAMS TRIGGERS
;::TM1::^{NumpadAdd}
::TM1:: ;find Daily Stand Up and toggle mute
tmTitle := "NAME OF MEETING"
SetTitleMatchMode, 2 ; contains the 
if WinExist(tmTitle)
{
WinActivate 
Send ^+M
;Send {Ctrl down}
;Send {Shift down}
;Send M
Sleep 10
Send {Ctrl up}
Send {Shift up}
return
}
 



;CHROME TRIGGERS
::CH1:: ;zoom in
Send {Ctrl Down}{=}
Sleep 50
Send {Ctrl Up}
return

::CH2:: ;zoom out
Send {Ctrl Down}{-}
Sleep 50
Send {Ctrl Up}
return

::CH3:: ;zoom out

return

;::CH3:: ;time card
;Run chrome.exe %timeURL1% %timeURL2%
;return

;SNOW TRIGGERS
;::SN1::
Send {Blind}{Text}//query records `nvar gr = new GlideRecord('incident');`n//Indicate the table to query from `n//The 'addQuery' line allows you to restrict the query to the field/value pairs specified(optional) `n//gr.addQuery('active', true);`ngr.query(); //Execute the query `nwhile (gr.next()) { `n//While the recordset contains records, iterate through them`n//Do something with the records returned`nif(gr.category == 'software'){`ngs.log('Category is ' + gr.category);`n}`n}
return


::SN1::
Send {Blind}{Text} //Find all inactive incident records and delete them one-by-one `nvar tTable = 'TABLE'; //load table`nvar qQuery = 'QUERY'; //load query options`n`nvar gr = new GlideRecord(tTable);`ngr.addEncodedQuery(qQuery);`ngr.addQeuery('active',true);`ngr.setLimit(1);`ngr.query();`nwhile (gr.next()) {`n//Delete each record in the query result set`ngr.deleteRecord();`n`n//gr.deleteMultiple(); //Deletes all records in the record set`n}
return

::SN2::
Send {Blind}{Text}var gr = new GlideRecord('incident');`ngr.get(sys_id_of_record_here);`n//Do something with the record returned`nif(gr.category == 'software'){`ngs.log('Category is ' + gr.category);`n}
return


::SN4::
Send {Blind}{Text} //Create a new Incident record and populate the fields with the values below`n var gr = new GlideRecord('incident');`n gr.initialize();`n gr.short_description = 'Network problem';`n gr.category = 'software';`n gr.caller_id.setDisplayValue('Joe Employee');`n gr.insert();`n
return

::SN5:: ;opens JavaScript Executor and sends g_form.setMandatory()
Send {Alt down}
Send {Ctrl down}
Send {Shift down}
Send J
Sleep 10
Send {Shift up}
Send {Ctrl up}
Send {Alt up}
Sleep 750
Send {Blind}{Text}  var ifield = 'FIELD';`n g_form.setMandatory(ifield,false);
return

::SN6::
Send {Blind}{Text}var gg = ["u_story_points_low","story_points","u_story_points_high"];`nfor (var i = 0; i < gg.length; i++) {`ng_form.setVisible(gg[i],false); `n//g_form.setValue(gg[i],7*i);`n `n}
return

::SN7:: ;for loop
Send {Blind}{Text}`nvar text = "";`nfor (var i = 0; i < 3; i++) {`n  text += "cars checked in " + i + "\n";`n}`nconsole.log(text);
return

;Send {Alt up}
return
;Sleep 2000
;Send {Blind}{Text} var ifield = 'U_FIELD';`n g_form.setMandatory('u_citizenship',false);


w = 1
x = 2
y = 4
z := 8

Add(w,x,y,z)
{	return w+x+y+z
}

::ST0::
Var := %z%-1 ;w ;Add(w,2,3,4)
Send %Var%
MsgBox % "The answer is: " . Var
return

;::ST1::2


::MVD::
Send {WheelDown}
Sleep 50
Send {WheelDown}
return


