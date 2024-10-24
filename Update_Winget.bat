@echo off
echo   ///////////////////////////////////////////
echo  ////////////// WINGET UPDATE //////////////
echo ///////////////////////////////////////////
echo Mise a jour de tous les packages via winget en cours...
winget upgrade --all --accept-package-agreements --accept-source-agreements --include-unknown --silent

if %errorlevel% equ 0 (
    echo Mise à jour terminée avec succès!
) else (
    echo Erreur lors de la mise à jour des packages.
)

pause
