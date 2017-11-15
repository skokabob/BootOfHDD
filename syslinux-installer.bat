@ECHO OFF

:HOME
CLS
ECHO ---------------------------------------------
ECHO      SYSLINUX INSTALLER     
ECHO ---------------------------------------------

IF NOT EXIST "syslinux.exe" (
 ECHO Syslinux.exe does not exist
 PAUSE > nul
 EXIT
)

:DRIVE
SET /p USB=Drive letter:
IF EXIST %USB%:\WINDOWS\explorer.exe (
 GOTO OS
) ELSE (
 GOTO INSTALL
)

:INSTALL
syslinux.exe -mad \boot\syslinux -f %USB%:
IF EXIST %USB%:\boot\syslinux\ldlinux.sys (
 ECHO Syslinux successfully installed on drive %USB%:
 PAUSE > nul
 EXIT
) ELSE (
 PAUSE > nul
 GOTO HOME
)

  :OS
   ECHO Cannot run Syslinux from your local system hard drive
    PAUSE > nul (
   GOTO HOME
  )