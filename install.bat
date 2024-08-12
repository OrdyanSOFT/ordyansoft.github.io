@echo off
chcp 65001 >nul

title ----=={ R3yZ0L }==----

color 0A
echo.=========================================================================
echo =============       Установка NNLauncher v0.0.1      ====================
echo =========================================================================
echo.
echo Выберите действие:
echo 1. Перейти на сайт и скачать файл
echo 2. Скачать файл прямо сейчас
echo.

echo. 	 ---===
echo.                                                                      
echo.           скажите тем ребятам , чтоб меня разблокировали в чате
echo.                            TG - @r34_43yz0l
echo.                                                                  ===---
set /p choice=Введите 1 или 2 и нажмите Enter: 

if "%choice%"=="1" goto website
if "%choice%"=="2" goto download
goto end

:website
start "" "https://ordyansoft.github.io/"
goto end

:download
set "URL=https://your-username.github.io/yourfile.exe"
set "FILENAME=yourfile.exe"

curl -o "%FILENAME%" "%URL%"

if exist "%FILENAME%" (
    echo Файл скачан успешно: %FILENAME%
    start "" "%FILENAME%"
) else (
    echo Ошибка при скачивании файла.
)

goto end

:end
pause
