# README: How to Set Up Run Media Pause

## Step 1: Unzip the Files

1. Unzip the project in desired file location
   - Right-clicking the zip file.
   - Select **Extract All**.
   - Choose a location to extract the files to.

## Step 2: Install AutoHotkey

To run the AutoHotkey script, you need to have **AutoHotkey** installed on your system. To download follow these steps:

1. **Download AutoHotkey**:
   - Go to the official AutoHotkey website: https://www.autohotkey.com/download/.
   - Select the v1.1 version
   
2. **Install AutoHotkey**:
   - Run the installer after downloading.
   - Select the **"Express Installation"** option to automatically install AutoHotkey with the default settings.
   
3. **Verify the Installation**:
   - Once installed, open **Start** and type `AutoHotkey`. If AutoHotkey is installed correctly, it should appear in the search results.

## Step 3: Set Up AutoHotkey to Run on Startup

To make your AutoHotkey script run automatically when your computer starts, you need to create a scheduled task. Follow these steps:

1. **Open Task Scheduler**:
   - Press `Win + R`, type `taskschd.msc`, and press **Enter** to open **Task Scheduler**.

2. **Create a New Task**:
   - In the right-hand panel, click `Create Task` **NOT** `Create Basic Task`.
   
3. **General Settings**:
   - In the **General** tab, name the task (e.g., "Run Media Pause").
   - Under **Security options**, select **Run only when user is logged on**.
   - Check **Run with highest privileges**.
   - Set the **Configure for** dropdown to `Windows 10`

4. **Set Trigger for Task**:
   - Go to the **Triggers** tab and click **New**.
   - Set the **Begin the task** dropdown to `At logon`.
   - Click **OK**.

5. **Set Action for Task**:
   - Go to the **Actions** tab and click **New**.
   - Set the **Action** to **Start a program**.
   - In the **Program/script** field, enter the path to the AutoHotkey executable (e.g., `C:\Program Files\AutoHotkey\AutoHotkey.exe`).
   - In the **Add arguments (optional)** field, enter the path to your `.ahk` script. For example:
     ```plaintext
     "C:\Path\To\Your\Script.ahk"
     ```
   - Click **OK**.

6. **Save the Task**:
   - Click **OK** to save and close the task.

Your AutoHotkey script will now run automatically every time you log in.

## (OPTIONAL) How to change key to press

The default key to trigger the program is F1 to change the key follow these steps:

### 1. **Open the Script in Notepad**

1. Navigate to the folder where you have saved the `runMediaPause.ahk` script.
2. Right-click the `runMediaPause.ahk` file and select **Open with** → **Notepad** (or any text editor of your choice).

### 2. **Find the Hotkey Definition**

At the beginning of the script, you will see a line like this:

```ahk
F1::  ; This means F1 is the trigger key
```

This line defines the F1 key as the trigger for the script's action. To change the hotkey, you'll need to modify the F1:: part of the script.

### 3. Change the Hotkey

To change the hotkey to a different key, simply replace F1 with the key of your choice. For example:

```ahk
f:: ; This means the f key is the trigger key
```

### 4. Find more Hotkeys

If you are not sure about what to replace F1 with for the key you want check out AutoHotky Documentation

- https://www.autohotkey.com/docs/v1/KeyList.htm

This page will provide you with the full list of keys you can use to customize your hotkeys in AutoHotkey.

### 5. Save the Script

After making your changes don't forget to save the file

1. Click File → Save in Notepad (or use Ctrl + S).

Now when you run the script again, it will respond to the new hotkey you've set.
