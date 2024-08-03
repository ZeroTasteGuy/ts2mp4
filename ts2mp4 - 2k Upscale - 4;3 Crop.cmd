@echo off
echo %time%
setlocal enabledelayedexpansion



for %%f in (*.TS) do (
    set "output=%%~na_upscaled.mp4"
    echo Processing file %%a
    ffmpeg -hide_banner -i "%%f" -vf "crop=960:720:160:0,scale=1920:1440:flags=lanczos" -r 60 -rc constqp -qp 19 -c:a copy "%%~nf upscaled.mp4"
    if errorlevel 1 echo Error upscaling %%a

)
echo %time%
pause

