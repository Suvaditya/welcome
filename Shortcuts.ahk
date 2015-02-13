#SingleInstance
::date::
{
	Send, %A_YYYY%/%A_MM%/%A_DD%
	Return
}
::day::
{
	Send, %A_DDDD%
	Return
}
::time::
{
	Send, %A_Hour%:%A_Min%:%A_Sec%.%A_MSec%
	Return
}
::user::
{
	Send, %A_UserName%
	Return
}
MButton::
{
	MouseGetPos, x, y, hw
	WinGetTitle, title, ahk_id %hw%
	WinGet, p, pid, ahk_id %hw%
	msg = Handle: %hw%`nWindow Title:  %title%`nProcess ID: %p%
	MsgBox, 0, Window Info, %msg%
	Return
}
::docs::
{
	Send, %A_MyDocuments%
	Return
}
