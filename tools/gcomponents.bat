@echo off
cd ..
COLOR CF
:top
echo ***************************************************************
echo.
echo Angular Generator of components
echo.
echo ***************************************************************
echo.
set /p id="Enter component name:"
set /p COLOR="Choose component type s,c: "


if "%COLOR%"=="c" (
    echo.
    echo ***************************************************************
    echo Generate Component %id%
    ng generate component %id% --module=app.module
    echo ***************************************************************
    echo.
    pause
)
if "%COLOR%"=="s" (
  echo 2
)
pause
