; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one ahk file simultaneously and each will get its own tray icon.

; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
; launches a web site in the default browser.  The second is Control+Alt+N
; and it launches a new Notepad window (or activates an existing one).  To
; try out these hotkeys, run AutoHotkey again, which will load this file.

;-------------------------------------------------------------查看key code
;-------------------------------------------------------------watch key code
;#InstallKeybdHook

;-------------------------------------------------------------debug webpage
#h::Run http://localhost:8080/itemSSH

;-------------------------------------------------------------输出EL表达式${}
;-------------------------------------------------------------print EL express ${}, and focus in the "{|}"
#i::
Send {$}{{}{}}{Left}
return

;-------------------------------------------------------------模拟方向键wasd
;-------------------------------------------------------------mock arrows
!a:: Send {left}
!d:: Send {right}
!w:: Send {up}
!s:: Send {down}

;-------------------------------------------------------------select a word near cursor ---- alt+n
;-------------------------------------------------------------选定光标处的单词
!n::
Send ^{Left}
Send +^{Right}
return

;-------------------------------------------------------------backspace一个单词  ---- alt + b
;-------------------------------------------------------------delete a word(ctrl+backspace)
!b:: Send ^{Backspace}

;-------------------------------------------------------------delete 一个单词 --- alt + m
!m:: Send ^{Delete}

;-------------------------------------------------------------["alt+l"] == Backspace
!l:: Send {Backspace}

;-------------------------------------------------------------[alt+z] == Delete
!z::Send {Delete}

;-------------------------------------------------------------选中一行(win + s)
;-------------------------------------------------------------select a row
#s:: 
Send {Home} 
Send +{End}
return

;-------------------------------------------------------------删除一行(win + a)
;-------------------------------------------------------------delete a row
#a:: 
Send {End}
Send +{Home}
Send {Backspace}
return

;-------------------------------------------------------------模拟home,end ([,')
;-------------------------------------------------------------mock HOME, END 
![:: Send {Home}
!':: Send {End}



;-------------------------------------------------------------模拟鼠标双击(取消cancel，需要鼠标移动)
;!n::
;SendEvent {Blind}{LButton down}
;SendEvent {Blind}{LButton up}
;SendEvent {Blind}{LButton down}
;SendEvent {Blind}{LButton up}
;return


; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.

