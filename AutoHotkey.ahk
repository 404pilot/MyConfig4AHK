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
#InstallKeybdHook

;-------------------------------------------------------------debug webpage
# & h::Run http://localhost:8080/itemSSH

;-------------------------------------------------------------输出EL表达式${}
# & i::
Send {$}{{}{}}{Left}
return

;--------------------------------------------------------------------------------------------------------------------------
;----------------------------满足poker配置satisfy poker mapping------------------------------------------------------------
;-------------------------------------------------------------模拟方向键wasd
;-------------------------------------------------------------mock arrows
RAlt & a:: Send {left}
RAlt & d:: Send {right}
RAlt & w:: Send {up}
RAlt & s:: Send {down}
;-------------------------------------------------------------模拟home,end ([,')
;-------------------------------------------------------------mock HOME, END 
RAlt & [:: Send {Home}
RAlt & ':: Send {End}

;-------------------------------------------------------------模拟del
;-------------------------------------------------------------mock DEL 
RAlt & z:: Send {Delete}
RAlt & /:: Send {Delete}
;--------------------------------------------------------------------------------------------------------------------------
;--------------------------------------------------------------------------------------------------------------------------

;-------------------------------------------------------------select a word near cursor ---- alt+n
;-------------------------------------------------------------选定光标处的单词
LAlt & n::
Send ^{Left}
Send +^{Right}
return

;-------------------------------------------------------------backspace一个单词  ---- alt + b
;-------------------------------------------------------------delete a word(ctrl+backspace)
LAlt & b:: Send ^{Backspace}

;-------------------------------------------------------------delete 一个单词 --- alt + m
LAlt & m:: Send ^{Delete}

;-------------------------------------------------------------[Lalt+;] == Backspace [SC027 is ;]
LAlt & SC027:: Send {Backspace}

;-------------------------------------------------------------[Lalt+'] == Delete
LAlt & '::Send {Delete}

;-------------------------------------------------------------选中一行(LAlt + a)
;-------------------------------------------------------------select a row
LAlt & a:: 
Send {Home} 
Send +{End}
return

;-------------------------------------------------------------删除一行(LAlt + d)
;-------------------------------------------------------------delete a row
LAlt & d:: 
Send {End}
Send +{Home}
Send {Backspace}
return




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

