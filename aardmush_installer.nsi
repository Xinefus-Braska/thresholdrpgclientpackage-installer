; Aardwolf MUSHclient Package Installer
;
; Finally, an installer generator for the Aardwolf MUSHclient Package?
;
;--------------------------------

; Find version string and put it into PackageVersion variable
!system "GetAardwolfPackageVersion.exe"
!include "PackageVersion.txt"
!delfile "PackageVersion.txt"

; Show details while installing? options are hide|show|nevershow
ShowInstDetails show

; Name of the package
Name "Aardwolf MUSHclient ${PackageVersion}"

; File to write
OutFile "Aardwolf_MUSHclient.exe"

; Default installation directory
InstallDir $DESKTOP\MUSHclient

; Text to prompt the user to enter a directory
DirText "This will install the Aardwolf MUSHclient Package ( ${PackageVersion} )."

;--------------------------------

; Installation section
Section "" ;No components page, name is not important

; Set output path to the installation directory.
SetOutPath $INSTDIR

; Add these files always
SetOverwrite on
AllowSkipFiles off
File /r /x Aardwolf.db /x Aardwolf.mcl /x state /x mushclient_prefs.sqlite /x MUSHclient.ini /x .gitignore MUSHclient\*

; Add these files only if not already there
; You could technically do this in one line after SetOverwrite off
; with Files /r MUSHclient\* again, but then the installer reports
; double the required space even though it's all just duplicates.
SetOverwrite off
File MUSHclient\Aardwolf.db
File MUSHclient\mushclient_prefs.sqlite
File MUSHclient\MUSHclient.ini
SetOutPath $INSTDIR\worlds
File MUSHclient\worlds\Aardwolf.mcl
SetOutPath $INSTDIR\worlds\plugins\state
File MUSHclient\worlds\plugins\state\*
SetOutPath $INSTDIR


SectionEnd ; end the section
