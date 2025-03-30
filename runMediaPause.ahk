F10::
{
    ; Get the path of the current AutoHotkey script
    scriptDir := A_ScriptDir

    ; Define the path to the VBScript file (assumes the .vbs file is in the same folder)
    vbscriptPath := scriptDir . "\runMediaPause.vbs"
    
    ; Run the VBScript to execute PowerShell silently
    Run, %vbscriptPath%
}
