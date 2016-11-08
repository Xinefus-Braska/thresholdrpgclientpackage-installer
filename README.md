# aardwolfclientpackage-installer
Installer creation scripts for https://github.com/fiendish/aardwolfclientpackage

Directions:

1. Put these files above a freshly cloned MUSHclient directory
2. Use MakeNSIS or MakeNSISW to compile aardmush_installer.nsi

I use it in GNU/Linux with Wine by:
`wine ~/.wine/drive_c/Program\ Files/NSIS/makensis.exe aardmush_installer.nsi`

I imagine the Windows invocation is not strikingly dissimilar.

Sample invocation:
```
git clone -b development --depth 1 git@github.com:fiendish/aardwolfclientpackage.git NEW_AARDMUSH_RELEASE
cd NEW_AARDMUSH_RELEASE
wget https://raw.githubusercontent.com/fiendish/aardwolfclientpackage-installer/master/aardmush_installer.nsi
wget https://raw.githubusercontent.com/fiendish/aardwolfclientpackage-installer/master/get_version.nsi
wget https://raw.githubusercontent.com/fiendish/aardwolfclientpackage-installer/master/hello.rtf
wine ~/.wine/drive_c/Program\ Files/NSIS/makensis.exe aardmush_installer.nsi
```
