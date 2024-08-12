@echo off
chcp 65001 >nul

title ----=={ R3yZ0L }==----

color 0A
echo.=========================================================================
echo =============       Установка NNLauncher v0.0.1      ====================
echo =========================================================================

:: Проверка на наличие curl
where curl >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo Ошибка: curl не найден. Пожалуйста, установите curl для продолжения.
    pause
    exit /b
)

:: Установка параметров
set "URL=https://ordyansoft.github.io/install.bat"
set "FILENAME=install.bat"

:: Скачивание файла
echo Скачивание файла %FILENAME% с %URL%...
curl -L -o "%FILENAME%" "%URL%"

:: Проверка успешности скачивания
if exist "%FILENAME%" (
    echo Файл скачан успешно: %FILENAME%
    echo Запуск файла...
	
    start "" "%FILENAME%"
	exit
) else (
    echo Ошибка при скачивании файла. Проверьте URL или ваше подключение к Интернету.
)

:end
pause
