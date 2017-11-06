echo off

echo pack shells
cd Shells
cd putshell
shellfoundry pack
copy dist\putshell.zip "..\..\Admin Blueprint\Scripts\Admin Setup Script\putshell.zip" /y
cd ..
cd trafficshell
shellfoundry pack
copy dist\trafficshell.zip "..\..\Admin Blueprint\Scripts\Admin Setup Script\trafficshell.zip" /y
cd ..
cd l2mockswitch
shellfoundry pack
copy dist\l2mockswitch.zip "..\..\Admin Blueprint\Scripts\Admin Setup Script\l2mockswitch.zip" /y
cd ..
cd "Admin Blueprint\Scripts\Admin Setup Script"
"c:\Program Files\7-Zip\7z.exe" a "..\..\Package\topology scripts\Admin Setup Script.zip" *
cd..

echo pack admin blueprint
cd "Admin Blueprint\Package"
del *.zip
"c:\Program Files\7-Zip\7z.exe" a "..\..\Packages\Admin Blueprint.zip" *
cd..\..

echo pack put traffic blueprint
cd "PUT Traffic Test Blueprint\Scripts"
cd Setup
del *.zip
"c:\Program Files\7-Zip\7z.exe" a "..\..\Package\Topology Scripts\Setup Training.zip" *
cd..
cd Teardown
del *.zip
"c:\Program Files\7-Zip\7z.exe" a "..\..\Package\Topology Scripts\Teardown Training.zip" *
cd..
cd "Run Tests"
copy "Run Tests.py" "..\..\Package\Topology Scripts" /y
cd..\..\..
cd "PUT Traffic Test Blueprint\Package"
del *.zip
"c:\Program Files\7-Zip\7z.exe" a "..\..\Packages\PUT Traffic Test Blueprint.zip" *
cd..\..

