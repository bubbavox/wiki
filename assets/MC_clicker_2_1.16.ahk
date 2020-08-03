#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#MaxThreadsPerHotkey 3

;;; CONFIGURATION:
      click_delay := 140000       ; milliseconds
      splash_pos_x := 400       ; top left would be x = 0, y = 0
      splash_pos_y := 0       
      start_text := "script started"
      stop_text := "script stopped"
      win_title := "Minecraft* 1.16"  ; title of your window -- enough characters to distinguish it; e.g. "Minecra"


F8::
    toggle:=!toggle
      if toggle
      {
        SplashTextOn, 100, 50, AHK, % start_text    		; Width, Height, Title, Text
        WinMove, AHK, , % splash_pos_x, % splash_pos_y     	; Move the splash window, Title, , x, y
      }
      else
      {
        SplashTextOn, 100, 50, AHK, % stop_text
        WinMove, AHK, , % splash_pos_x, % splash_pos_y
        Sleep, 3000
        SplashTextOff
      }
      while toggle
      {
          ControlClick,, % win_title,,,,NA
          Sleep, 2000
          SplashTextOff
          ControlClick,, % win_title,,,,NA
          Sleep, 2000
          ControlClick,, % win_title,,,,NA
          Sleep, % click_delay
      }
  Return
