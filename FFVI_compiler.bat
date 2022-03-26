@echo off
rem ----------------------------------------------------------------------------
set ORIGINAL_ROM="rom\bnw.sfc"
set TRANSLATED_ROM="bnw_es.sfc"
set PATCHES="asm"

rem ----------------------------------------------------------------------------
set ASAR="tools\asar.exe"
set FFVIDECOMP="tools\ffvi.exe"
set GFX="gfx"
set ATLAS="Atlas.exe"
set FLIPS="tools\flips.exe"

rem ----------------------------------------------------------------------------
copy %ORIGINAL_ROM% %TRANSLATED_ROM% /y
rem ----------------------------------------------------------------------------

echo.
echo Import dialogues...

%flips% --apply "scripts_espanol[n].ips" %TRANSLATED_ROM%
%flips% --apply "international_signs[n].ips" %TRANSLATED_ROM%

echo Applying hacks...
%ASAR% --pause-mode=on-error %PATCHES%\main.asm %TRANSLATED_ROM%

echo Insert Script...

%atlas% -d debug.log %TRANSLATED_ROM% battle_strings.txt

echo Compressing GFX
%FFVIDECOMP% -m c -s 0x12E000 %TRANSLATED_ROM% < %GFX%\modified\12E000_Battle_GFX.bin
%FFVIDECOMP% -m c -s 0x04BA00 %TRANSLATED_ROM% < %GFX%\modified\04BA00_End_Font_GFX.bin