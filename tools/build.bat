@ECHO OFF
echo ::                                                       ANGULAR                                                     ::
echo ::                                                  COMPILANDO PROYECTO                                              ::
echo ::                                                                                                    Version: 1.0.0 ::
set baseurl=https://playhousemx.uno/
cd ..
cmd /c ng build --prod --base-href %baseurl%
xcopy .htaccess dist\ludoteca\
set path="C:\Program Files\WinRAR\";%path%
cd dist
del /s *.xcf
del /f ludoteteca_dist.zip
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ep1 -ibck -r -y "ludoteteca_dist" "ludoteca\*"
start .
PAUSE
