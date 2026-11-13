@echo off
setlocal
set "PCSX2=C:\pcsx2-v2.9.155-windows-x64-Qt\pcsx2-qt.exe"
set "ISO=C:\Jogos\Guitar Hero Flash Back.iso"

if not exist "%PCSX2%" (
  echo Nao encontrei o PCSX2 neste caminho:
  echo %PCSX2%
  echo.
  echo Confira onde o PCSX2 foi extraido e ajuste este arquivo.
  pause
  exit /b 1
)

if not exist "%ISO%" (
  echo Nao encontrei a imagem do jogo neste caminho:
  echo %ISO%
  echo.
  echo Confira se o arquivo ISO continua nessa pasta.
  pause
  exit /b 1
)

start "Guitar Hero Flash Back - PCSX2" "%PCSX2%" -fullscreen -- "%ISO%"
endlocal

