#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force
CoordMode, Pixel, Screen

; HotKeys
F1::Reload
Return

F2::
main()
Return

Pause::Pause
Return

; Functions
main() {
	Loop {
		; waitForGameStart()
		clickPlayAgain()
	}
}

waitForGameStart() {
	Loop {
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, Start3.png
		if (ErrorLevel = 0) {
			MsgBox, Found Start
		    break
		}
	}
}

clickPlayAgain() {
	Loop {
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, CallingCard.png
		if (ErrorLevel = 0) {
			Click, 1557, 756
			Sleep, 100
			Click, 1557, 756
			Sleep, 100
			Click, 1557, 756
			Sleep, 1000
			Click, 988, 532
			Sleep, 100
			Click, 988, 532
			Sleep, 100
			Click, 988, 532
			Sleep, 100
			; ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, CallingCard.png
		    break
		}
	}
}




