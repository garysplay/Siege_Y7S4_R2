del /Q /S release64\*
rmdir /S /Q release64
mkdir release64
call build_env_x64.bat
cl /std:c++17 /LD emu.cpp User32.lib Shell32.lib /EHsc /MP12 /Ox /link /OUT:release64\uplay_r2_loader64.dll
