' Get the path of the current VBScript file
Set objFSO = CreateObject("Scripting.FileSystemObject")
scriptDir = objFSO.GetParentFolderName(WScript.ScriptFullName)
filePath = scriptDir & "\mediaPause.ps1"

' Run script
Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "powershell.exe -ExecutionPolicy Bypass -File """ & filePath & """", 0, False
