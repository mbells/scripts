#!/usr/bin/env python3
""" Toggle the touchpad.

Currently need to set this manually, see
https://askubuntu.com/questions/604858/run-shell-script-on-keyboard-shortcut

Based on: https://askubuntu.com/a/1086760/192079
"""
import sys
import subprocess

gsettings_schema, gsettings_key = "org.gnome.desktop.peripherals.touchpad", "send-events"

def get_touchpad_send_events():
    send_events_value = subprocess.check_output(["gsettings", "get", gsettings_schema, gsettings_key])
    return send_events_value.strip()

def toggle_touchpad():
    # string returned from get is a repr including quotes,
    # but string sent with set does not need to have quotes
    if get_touchpad_send_events() == b"'enabled'":
        newval = 'disabled'
    else:
        newval = 'enabled'
    subprocess.Popen(["gsettings", "set", gsettings_schema, gsettings_key, newval])
    print(f"Set {gsettings_schema}:{gsettings_key} to {newval}")
    subprocess.run(["/usr/bin/notify-send", "--icon=face-monkey", f"Touchpad {newval}"])

def main():
    toggle_touchpad()

if __name__ == '__main__':
    main()