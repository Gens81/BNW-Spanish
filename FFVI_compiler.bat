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
rem %FFVIDECOMP% -m c -s 0x02686C %TRANSLATED_ROM% < %GFX%\modified\02686C_Title_Program.bin
%FFVIDECOMP% -m c -s 0x12E000 %TRANSLATED_ROM% < %GFX%\modified\12E000_Battle_GFX.bin
%FFVIDECOMP% -m c -s 0x04BA00 %TRANSLATED_ROM% < %GFX%\modified\04BA00_End_Font_GFX.bin
rem %FFVIDECOMP% -m c -s 0x18F000 %TRANSLATED_ROM% < %GFX%\modified\18F000_Title_GFX.bin
rem %FFVIDECOMP% -m c -s 0x19568f %TRANSLATED_ROM% < %GFX%\modified\19568f_Ending_Cinematic_GFX_1.bin
rem %FFVIDECOMP% -m c -s 0x199d4b %TRANSLATED_ROM% < %GFX%\modified\199d4b_Ending_Cinematic_GFX_2.bin
rem %FFVIDECOMP% -m c -s 0x19a4e5 %TRANSLATED_ROM% < %GFX%\modified\19a4e5_Ending_Cinematic_GFX_3.bin
rem %FFVIDECOMP% -m c -s 0x19a800 %TRANSLATED_ROM% < %GFX%\modified\19a800_Map_Tile_Properties.bin
rem %FFVIDECOMP% -m c -s 0x19cd10 %TRANSLATED_ROM% < %GFX%\modified\19cd10_Map_Tile_Properties_Pointers.bin