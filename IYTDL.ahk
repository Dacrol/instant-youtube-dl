#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

EnvGet, USERPROFILE, USERPROFILE

Text_MenuDL=Get from clipboard
Menu, Tray, Add, %Text_MenuDL%, YoutubeDL
Menu, Tray, Default, %Text_MenuDL%

!^g:: Gosub, YoutubeDL

YoutubeDL:
Run, %comspec% /S /K "cd /D %USERPROFILE%/Downloads && youtube-dl %clipboard% && exit"
return
