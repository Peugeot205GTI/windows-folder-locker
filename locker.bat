
@ECHO OFF
title Folder Private
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Private goto MDLOCKER
:CONFIRM
echo Do you want to lock the folder(Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Error %cho% is not valid 
goto CONFIRM
:LOCK
ren Private "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo The folder has been sucsessfuly locked
goto End
:UNLOCK
echo Please enter you password to unlock
set/p "pass=>"
if NOT %pass%== 1234 goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Private
echo The folder has been sucsessfuly unlocked
goto End
:FAIL
echo Invalid password
goto end
:MDLOCKER
md Private
echo Private folder has been sucsessfuly created
goto End
:End