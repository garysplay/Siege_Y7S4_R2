del /Q /S release\*
rmdir /S /Q release
mkdir release
call build_env_x64.bat
cl /std:c++17 /LD /DEMU_RELEASE_BUILD /DNDEBUG emu.cpp User32.lib Shell32.lib /EHsc /MP12 /Ox /link /OUT:release\upc_r2_loader64.dll
