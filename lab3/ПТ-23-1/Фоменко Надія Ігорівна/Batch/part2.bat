@echo off

set "directory=C:\lab3\ПТ-23-1\Фоменко Надія Ігорівна"

set /a count=0

:count_subdirectories
for /d %%i in ("%directory%\*") do (
    set /a count+=1
    set "directory=%%i"
    call :count_subdirectories
)

echo Кількість підкаталогів у каталозі %directory%: %count%
