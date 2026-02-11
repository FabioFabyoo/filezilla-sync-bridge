@echo off
setlocal enabledelayedexpansion

:: CONFIGURAZIONE PERCORSI
set "FZ_PATH=%APPDATA%\FileZilla\sitemanager.xml"
set "CLOUD_PATH=%USERPROFILE%\Nextcloud\Share\sitemanager.xml"

:: LOGICA DI SINCRONIZZAZIONE
echo 1. Invia configurazione al Cloud (Upload)
echo 2. Ricevi configurazione dal Cloud (Download)
set /p choice="Scegli un'opzione (1 o 2): "

if "%choice%"=="1" (
    echo [INVIO] Copia da FileZilla a Nextcloud...
    if exist "%FZ_PATH%" (
        copy /Y "%FZ_PATH%" "%CLOUD_PATH%"
        echo Operazione completata! [cite: 7]
    ) else (
        echo ERRORE: File sorgente FileZilla non trovato.
    )
)

if "%choice%"=="2" (
    echo [RICEZIONE] Sincronizzazione dal Cloud a FileZilla...
    if exist "%CLOUD_PATH%" (
        copy /Y "%CLOUD_PATH%" "%FZ_PATH%"
        echo Operazione completata! [cite: 9]
    ) else (
        echo ERRORE: File su Cloud non trovato.
    )
)

echo.
echo Mi chiudo tra 10 secondi, grazie per avermi usato! 
timeout /t 10
exit
