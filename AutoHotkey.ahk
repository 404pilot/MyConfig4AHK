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

;-------------------------------------------------------------�鿴key code
;-------------------------------------------------------------watch key code
;#InstallKeybdHook

;-------------------------------------------------------------debug webpage
#h::Run http://localhost:8080/itemSSH

;-------------------------------------------------------------���EL���ʽ${}
;-------------------------------------------------------------print EL express ${}, and focus in the "{|}"
#i::
Send {$}{{}{}}{Left}
return

;-------------------------------------------------------------ģ�ⷽ���wasd
;-------------------------------------------------------------mock arrows
!a:: Send {left}
!d:: Send {right}
!w:: Send {up}
!s:: Send {down}

;-------------------------------------------------------------select a word near cursor ---- alt+n
;-------------------------------------------------------------ѡ����괦�ĵ���
!n::
Send ^{Left}
Send +^{Right}
return

;-------------------------------------------------------------backspaceһ������  ---- alt + b
;-------------------------------------------------------------delete a word(ctrl+backspace)
!b:: Send ^{Backspace}

;-------------------------------------------------------------delete һ������ --- alt + m
!m:: Send ^{Delete}

;-------------------------------------------------------------["alt+l"] == Backspace
!l:: Send {Backspace}

;-------------------------------------------------------------[alt+z] == Delete
!z::Send {Delete}

;-------------------------------------------------------------ѡ��һ��(win + s)
;-------------------------------------------------------------select a row
#s:: 
Send {Home} 
Send +{End}
return

;-------------------------------------------------------------ɾ��һ��(win + a)
;-------------------------------------------------------------delete a row
#a:: 
Send {End}
Send +{Home}
Send {Backspace}
return

;-------------------------------------------------------------ģ��home,end ([,')
;-------------------------------------------------------------mock HOME, END 
![:: Send {Home}
!':: Send {End}



;-------------------------------------------------------------ģ�����˫��(ȡ��cancel����Ҫ����ƶ�)
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

