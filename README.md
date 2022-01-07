# LaunchPadWorkflow
Workflow optimization using a Novation Launchpad MIDI controller to trigger keystrokes

## Requirements:

- Novation LaunchPad Midi Controller
- Bome's Midi Translator Classic : https://www.bome.com/products/mtclassic
- AutoHotKey : https://www.autohotkey.com/

## How it work:
The pads on the Launchpad are mapped to AutoHotKey triggers. When pressing an assigned pad, the pad generates a set of keystrokes that match trigger definitions within AutoHotkey that then execute our desired actions.

> Pressing the **RED Record Arm button** on the LaunchPad will the trigger mute/unmute command to MS Teams

### Actions Currently Mapped
> #### General Keyboard Shortcuts
> - Copy
> - Paste
> - Select All
> - Comment out line "//"
> - Comment out block "/*    */"
> - Comment out HTML open "<!--"
> - Comment out HTML close "-->"
> #### Open Applications
> - VSCode
> - Notepad
> - Snipping Tool
> #### Google Chrome Workflow
>  - Zoom In
>  - Zoom Out
>  - Zoom Reset
>  - Cycle left/right through tabs
>  - Open New Tab
>  - Open New Window
>  - Open desired URL
>     - Timecard
>     - ServiceNow Dev Instance
>     - ServiceNow Test Instance
>     - ServiceNow Sandbox
>  - Close Current Tab
>  - Bring to Front desired Opened window
>  - Terminate all Google Chrome Sessions
> #### ServiceNow Shortcuts (Replaces the need of using systanx Editor Macros)
>  - Gliderecord Insert
>  - Gliderecord Encodded Query
>  - Gliderecord Get
>  - Access JavaScript Executor and sends g_form.setMandatory()
>  - For Loop
>  - Try Catch
>  - Ajax Template
>  - Script Include Template 
