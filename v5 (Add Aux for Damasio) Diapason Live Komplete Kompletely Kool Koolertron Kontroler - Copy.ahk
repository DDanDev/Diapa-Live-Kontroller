;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Multi function keys setup: ;;;;
WaitT = -200 ; Time to wait between key presses (down)
;;;; Initialize counters & Variables that are used throughout the script
CxF14 = 0
UxF14 = 0
CxF15 = 0
UxF15 = 0
CxF18 = 0
UxF18 = 0
CxF24 = 0
UxF24 = 0
BMMode = PGM
CxF9 = 0
UxF9 = 0
AuxO = 0
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;Define commands (actions);;;;
;Using Labels to be triggered with GoSub later
;;;;;
;SOne : Don't use alt ctrl shift modifiers, 
;ControlSend, ,key,ahk_exe Studio One.exe ahk_class CCLWindowClass
;
;OBS : Hotkeys never disabled, keys used on any window
;SendInput, {Key down} + Sleep 50 + SendInput, {Key up}
;
;Companion : http triggering, can have up to 99 pages x 12 buttons, downloads a file that contains "ok"
;URLDownloadToFile, http://127.0.0.1:8000/press/bank/<page#>/<button#>, httpreply
;BM : from companion, use atem functions. functions not available create macro, button for macro.
;VLC: to use companion: View > Add Interface > Web
;;;;;;;;

BMCut:
	if (CxF9 = 1 and UxF9 = 0)
		{
		URLDownloadToFile, http://127.0.0.1:8000/press/bank/5/11, httpreply
		AuxO = 1
		return
		}
	URLDownloadToFile, http://127.0.0.1:8000/press/bank/2/11, httpreply
	return
BMAuto:
	if (CxF9 = 1 and UxF9 = 0)
		{
		URLDownloadToFile, http://127.0.0.1:8000/press/bank/5/10, httpreply
		AuxO = 1
		return
		}
	URLDownloadToFile, http://127.0.0.1:8000/press/bank/2/10, httpreply
	return
BMTogMode:
	if (BMMode = "PGM")
		{
		BMMode = PRV
		return
		}
	BMMode = PGM
	return		
BMIn1:
	if (CxF9 = 1 and UxF9 = 0)
		{
		URLDownloadToFile, http://127.0.0.1:8000/press/bank/5/1, httpreply
		AuxO = 1
		return
		}
	if (BMMode = "PRV")
		{
		URLDownloadToFile, http://127.0.0.1:8000/press/bank/3/1, httpreply
		return
		}
	URLDownloadToFile, http://127.0.0.1:8000/press/bank/2/1, httpreply
	return
BMIn2:
	if (CxF9 = 1 and UxF9 = 0)
		{
		URLDownloadToFile, http://127.0.0.1:8000/press/bank/5/2, httpreply
		AuxO = 1
		return
		}
	if (BMMode = "PRV")
		{
		URLDownloadToFile, http://127.0.0.1:8000/press/bank/3/2, httpreply
		return
		}
	URLDownloadToFile, http://127.0.0.1:8000/press/bank/2/2, httpreply
	return
BMIn3:
	if (CxF9 = 1 and UxF9 = 0)
		{
		URLDownloadToFile, http://127.0.0.1:8000/press/bank/5/3, httpreply
		AuxO = 1
		return
		}
	if (BMMode = "PRV")
		{
		URLDownloadToFile, http://127.0.0.1:8000/press/bank/3/3, httpreply
		return
		}
	URLDownloadToFile, http://127.0.0.1:8000/press/bank/2/3, httpreply
	return
BMIn4:
	if (CxF9 = 1 and UxF9 = 0)
		{
		URLDownloadToFile, http://127.0.0.1:8000/press/bank/5/4, httpreply
		AuxO = 1
		return
		}
	if (BMMode = "PRV")
		{
		URLDownloadToFile, http://127.0.0.1:8000/press/bank/3/4, httpreply
		return
		}
	URLDownloadToFile, http://127.0.0.1:8000/press/bank/2/4, httpreply
	return
BMIn5:
	if (CxF9 = 1 and UxF9 = 0)
		{
		URLDownloadToFile, http://127.0.0.1:8000/press/bank/5/5, httpreply
		AuxO = 1
		return
		}
	if (BMMode = "PRV")
		{
		URLDownloadToFile, http://127.0.0.1:8000/press/bank/3/5, httpreply
		return
		}
	URLDownloadToFile, http://127.0.0.1:8000/press/bank/2/5, httpreply
	return
BMIn6:
	if (CxF9 = 1 and UxF9 = 0)
		{
		URLDownloadToFile, http://127.0.0.1:8000/press/bank/5/6, httpreply
		AuxO = 1
		return
		}
	if (BMMode = "PRV")
		{
		URLDownloadToFile, http://127.0.0.1:8000/press/bank/3/6, httpreply
		return
		}
	URLDownloadToFile, http://127.0.0.1:8000/press/bank/2/6, httpreply
	return
BMIn7:
	if (CxF9 = 1 and UxF9 = 0)
		{
		URLDownloadToFile, http://127.0.0.1:8000/press/bank/5/7, httpreply
		AuxO = 1
		return
		}
	if (BMMode = "PRV")
		{
		URLDownloadToFile, http://127.0.0.1:8000/press/bank/3/7, httpreply
		return
		}
	URLDownloadToFile, http://127.0.0.1:8000/press/bank/2/7, httpreply
	return
BMIn8:
	if (CxF9 = 1 and UxF9 = 0)
		{
		URLDownloadToFile, http://127.0.0.1:8000/press/bank/5/8, httpreply
		AuxO = 1
		return
		}
	if (BMMode = "PRV")
		{
		URLDownloadToFile, http://127.0.0.1:8000/press/bank/3/8, httpreply
		return
		}
	URLDownloadToFile, http://127.0.0.1:8000/press/bank/2/8, httpreply
	return
OBSAuxGrp:
	SendInput, {F17 down}
	Sleep 50
	SendInput, {F17 up}
	return
OBSText:
	SendInput, {F18 down}
	Sleep 50
	SendInput, {F18 up}
	return
OBSStill:
	SendInput, {F19 down}
	Sleep 50
	SendInput, {F19 up}
	return
OBSStudio:
	SendInput, {F22 down}
	Sleep 50
	SendInput, {F22 up}
	return
OBSAuto:
	SendInput, {Ctrl down}
	Sleep 50
	SendInput, F
	Sleep 50
	SendInput, {Ctrl up}
	return
OBSCut:
	SendInput, {Ctrl down}
	Sleep 50
	SendInput, D
	Sleep 50
	SendInput, {Ctrl up}
	return
OBSVLCKey:
	SendInput, {F24 down}
	Sleep 50
	SendInput, {F24 up}
	return
OBSBlackBG:
	SendInput, {F23 down}
	Sleep 50
	SendInput, {F23 up}
	return
VLCPlay:
	URLDownloadToFile, http://127.0.0.1:8000/press/bank/4/1, httpreply
	return
VLCNext:
	URLDownloadToFile, http://127.0.0.1:8000/press/bank/4/2, httpreply
	return
VLCPrev:
	URLDownloadToFile, http://127.0.0.1:8000/press/bank/4/3, httpreply
	return
BMUSK:
	URLDownloadToFile, http://127.0.0.1:8000/press/bank/1/1, httpreply
	return
BMDSK1:
	URLDownloadToFile, http://127.0.0.1:8000/press/bank/1/2, httpreply
	return
BMDSK1Auto:
	URLDownloadToFile, http://127.0.0.1:8000/press/bank/1/5, httpreply
	return
BMDSK2:
	URLDownloadToFile, http://127.0.0.1:8000/press/bank/1/3, httpreply
	return
BMDSK2Auto:
	URLDownloadToFile, http://127.0.0.1:8000/press/bank/1/6, httpreply
	return
BMUGoToA:
	URLDownloadToFile, http://127.0.0.1:8000/press/bank/1/7, httpreply
	return
BMUGoToB:
	URLDownloadToFile, http://127.0.0.1:8000/press/bank/1/8, httpreply
	return
BMUGoToFull:
	URLDownloadToFile, http://127.0.0.1:8000/press/bank/1/9, httpreply
	return
S1Mute1:
	ControlSend, ,{F13},ahk_exe Studio One.exe ahk_class CCLWindowClass
	return
S1Mute2:
	ControlSend, ,{F14},ahk_exe Studio One.exe ahk_class CCLWindowClass
	return
S1Mute3:
	ControlSend, ,{F15},ahk_exe Studio One.exe ahk_class CCLWindowClass
	return
S1Mute4:
	ControlSend, ,{F16},ahk_exe Studio One.exe ahk_class CCLWindowClass
	return
S1Mute1On:
	ControlSend, ,{F17},ahk_exe Studio One.exe ahk_class CCLWindowClass
	return
S1Mute1Off:
	ControlSend, ,{F18},ahk_exe Studio One.exe ahk_class CCLWindowClass
	return

;;;;;;;;;;;;;;;;;;;;;;
;;;;Trigger keys. ;;;;
;Add Sleep 50 between differnt actions in the same trigger to be safe!
;Use GoSub, DEFINEDACTIONLABEL
;;;;
;For Multi Functions keys use:
;Initialize first value of variables C#x# and U#x# in the autorun (first part of the script)
;
;*F13::
;	SetTimer, TxF13, %WaitT%
;	CxF13 += 1 ; Click (down) counter
;	KeyWait, F13
;	if (CxF13 > 0)
;		UxF13 += 1 ; Release (up) counter
;	return
;TxF13: ; Timer Label to execute from button at row 1 column 1
;	if (CxF13 = 1 and UxF13 = 1) ; Click
;		{		;fit anything to be done between the lines with { }
;		SendInput
;		}
;	if (CxF13 = 2 and UxF13 = 2) ; Double click
;		{
;		SendInput
;		}
;	if (CxF13 = 1 and UxF13 = 0) ; Hold
;		{
;		SendInput
;		}
;	if (CxF13 = 2 and UxF13 = 1) ; Double click and hold (click then hold the second click)
;		{
;		SendInput
;		}
;	CxF13 = 0 ; restart counters
;	UxF13 = 0
;	return
;;;;
;For key combinations use:
;Key1 & Key2::
;First key becomes "modifier key" and will be disabled when clicked alone
;First key can be used alone as hotkey but will be triggered on up
;;;;
;Both are valid:
;Key1:: COMMAND
;
;Key1::
;	COMMANDS
;	return
;;;;
;Sequence configured in Koolertron:
;F13	F14	F15	F16	F17	F18
;F19	F20	F21	F22	F23	F24
;F12	F6	F7	F8	F9	F10
;F1	F2	F3	F11	ScrollLock
;;;;
;Remember hotkeys are blocked from doing anything other than what's in the script
;So Num1 etc won't actually type anything anywhere.
;;;;
;Always use * before hotkey i.e.
;*F13::
;to ignore modifier keys being pressed on the main keyboard (Ctrl, Alt, Shift, Windows)
;;;;
;Include hotkeys even when not used, to disable them systemwide, to avoid errors
;;;;
;Use KeyWait to not spam held down hotkey
;;;;

*F13::
	GoSub, BMUSK
	KeyWait, F13
	return
*F14::
	SetTimer, TxF14, %WaitT%
	CxF14 += 1
	KeyWait, F14
	if (CxF14 > 0)
		UxF14 += 1
	return
TxF14:
	if (CxF14 = 1 and UxF14 = 1) {
		GoSub, BMDSK1
		}
	if (CxF14 = 1 and UxF14 = 0) {
		GoSub, BMDSK1Auto
		}
	CxF14 = 0
	UxF14 = 0
	return
*F15::
	SetTimer, TxF15, %WaitT%
	CxF15 += 1
	KeyWait, F15
	if (CxF15 > 0)
		UxF15 += 1
	return
TxF15:
	if (CxF15 = 1 and UxF15 = 1) {
		GoSub, BMDSK2
		}
	if (CxF15 = 1 and UxF15 = 0) {
		GoSub, BMDSK2Auto
		}
	CxF15 = 0
	UxF15 = 0
	return
*F19:: 
	GoSub, BMUGoToA
	KeyWait, F19
	return
*F20:: 
	GoSub, BMUGoToB
	KeyWait, F20
	return
*F21:: 
	GoSub, BMUGoToFull
	KeyWait, F21
	return
*F16:: 
	GoSub, OBSText
	KeyWait, F16
	return
*F17:: 
	GoSub, OBSAuxGrp
	KeyWait, F17
	return
*F18::
	SetTimer, TxF18, %WaitT%
	CxF18 += 1
	KeyWait, F18
	if (CxF18 > 0)
		UxF18 += 1
	return
TxF18:
	if (CxF18 = 1 and UxF18 = 1) {
		GoSub, OBSCut
		}
	if (CxF18 = 2 and UxF18 = 2) {
		GoSub, OBSStudio
		}
	if (CxF18 = 1 and UxF18 = 0) {
		GoSub, OBSAuto
		}
	if (CxF18 = 2 and UxF18 = 1) {
		GoSub, OBSStudio
		}
	CxF18 = 0
	UxF18 = 0
	return
*F22:: 
	GoSub, S1Mute1
	KeyWait, F22
	return
*F23:: 
	GoSub, S1Mute2
	KeyWait, F23
	return
*F24::
	SetTimer, TxF24, %WaitT%
	CxF24 += 1
	KeyWait, F24
	if (CxF24 > 0)
		UxF24 += 1
	return
TxF24:
	if (CxF24 = 1 and UxF24 = 1) {
		GoSub, S1Mute3
		}
	if (CxF24 = 2 and UxF24 = 2) {
		GoSub, S1Mute3
		}
	if (CxF24 = 1 and UxF24 = 0) {
		GoSub, S1Mute3
		}
	if (CxF24 = 2 and UxF24 = 1) {
		GoSub, S1Mute3
		}
	CxF24 = 0
	UxF24 = 0
	return
*F1:: 
	GoSub, BMIn1
	KeyWait, F1
	return
*F2:: 
	GoSub, BMIn2
	KeyWait, F2
	return
*F3:: 
	GoSub, BMIn3
	KeyWait, F3
	return
*F11:: 
	GoSub, BMIn4
	KeyWait, F11
	return
*F12:: 
	GoSub, BMIn5
	KeyWait, F12
	return
*F6:: 
	GoSub, BMIn6
	KeyWait, F6
	return
*F7:: 
	GoSub, BMIn7
	KeyWait, F7
	return
*F8:: 
	GoSub, BMIn8
	KeyWait, F8
	return
*F9:: 
	SetTimer, TxF9, %WaitT%
	CxF9 += 1
	KeyWait, F9
	if (CxF9 > 0)
		UxF9 += 1
	return
TxF9:
	if (CxF9 = 1 and UxF9 = 1 and AuxO = 0) {
		GoSub, BMTogMode
		}
	CxF9 = 0
	UxF9 = 0
	AuxO = 0
	return
*F10:: 
	GoSub, BMAuto
	KeyWait, F10
	return
*ScrollLock:: 
	GoSub, BMCut
	KeyWait, ScrollLock
	return
*PgUp::
	GoSub, S1Mute1Off
	KeyWait, PgUp
	return
*PgDn::
	GoSub, S1Mute1On
	KeyWait, PgDn
	Return