@echo off
setlocal enabledelayedexpansion

:: Project folder-ku move aagum
cd /d "%~dp0"

echo =====================================
echo        Checking R Installation
echo =====================================

set "RSCRIPT="

:: Installed R version auto detect pannum
for /d %%D in ("C:\Program Files\R\R-*") do (
    if exist "%%D\bin\Rscript.exe" set "RSCRIPT=%%D\bin\Rscript.exe"
    if exist "%%D\bin\x64\Rscript.exe" set "RSCRIPT=%%D\bin\x64\Rscript.exe"
)

:: R illa na install pannum
if not defined RSCRIPT (
    echo R not found.
    echo Installing R...

    if exist "Rprogram.exe" (
        start /wait "" "Rprogram.exe"
    ) else (
        echo ERROR: Rprogram.exe file not found.
        pause
        exit /b
    )

    :: Install aprm marubadiyum check pannum
    for /d %%D in ("C:\Program Files\R\R-*") do (
        if exist "%%D\bin\Rscript.exe" set "RSCRIPT=%%D\bin\Rscript.exe"
        if exist "%%D\bin\x64\Rscript.exe" set "RSCRIPT=%%D\bin\x64\Rscript.exe"
    )
)

:: Still detect aagala na stop pannum
if not defined RSCRIPT (
    echo ERROR: R installation failed or not detected.
    pause
    exit /b
)

echo R Found:
echo !RSCRIPT!

echo.
echo =====================================
echo      Checking RStudio Installation
echo =====================================

set "RSTUDIO=C:\Program Files\RStudio\rstudio.exe"

if not exist "!RSTUDIO!" (
    if exist "Rstudio.exe" (
        echo RStudio not found.
        echo Installing RStudio...
        start /wait "" "Rstudio.exe"
    ) else (
        echo Rstudio.exe installer not found.
    )
) else (
    echo RStudio already installed.
)

echo.
echo =====================================
echo   Installing Required Libraries
echo =====================================

"!RSCRIPT!" install_packages.R

echo.
echo =====================================
echo      Starting Shiny Application
echo =====================================

"!RSCRIPT!" -e "shiny::runApp('app.R', launch.browser=TRUE)"

pause
exit