#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

EnvGet, USERPROFILE, USERPROFILE

Text_MenuDL=Get from clipboard
Text_MenuDL_MP3=Get MP3 from clipboard

Menu, Tray, Add, %Text_MenuDL%, YoutubeDL
Menu, Tray, Add, %Text_MenuDL_MP3%, YoutubeDL_MP3
Menu, Tray, Default, %Text_MenuDL%
Menu, Tray, Icon, youtube-dl.ico

!^g:: Gosub, YoutubeDL

YoutubeDL:
Run, %comspec% /S /K "cd /D %USERPROFILE%/Downloads && youtube-dl %clipboard% && exit"
return

YoutubeDL_MP3:
Run, %comspec% /S /K "cd /D %USERPROFILE%/Downloads && youtube-dl -f 251 -x --audio-format mp3 --audio-quality 0 %clipboard% && exit"
return
