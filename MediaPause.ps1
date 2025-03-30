# Pause Spotify globally
Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;
public class KeyboardSend {
    [DllImport("user32.dll", SetLastError = true)]
    public static extern void keybd_event(byte bVk, byte bScan, int dwFlags, int dwExtraInfo);
    public static void SendMediaKey(byte key) {
        keybd_event(key, 0, 0, 0);
        keybd_event(key, 0, 2, 0);
    }
}
"@ -Language CSharp

# Virtual-Key Code for Play/Pause Media Key
[KeyboardSend]::SendMediaKey(0xB3)
