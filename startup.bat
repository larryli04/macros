@echo off

cd C:\Users\Larry\Documents\GitHub\macros
START /B C:\Users\Larry\Documents\GitHub\macros\LuaMacros\LuaMacros.exe -r C:\Users\Larry\Documents\GitHub\macros\SECOND_KEYBOARD_script_for_LUA_MACROS.lua &

START /B "C:\Program Files\AutoHotkey\AutoHotkey.exe" "C:\Users\Larry\Documents\GitHub\macros\macro.ahk"
