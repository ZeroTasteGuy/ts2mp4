@echo off
echo %time%
setlocal enabledelayedexpansion



for %%f in (*.TS) do (
    set "output=%%~na_upscaled.mp4"
    echo Processing file %%a
    ffmpeg -hide_banner -i "%%f" -vf "scale=2560:1440:flags=lanczos" -r 60 -rc constqp -qp 19 -c:a copy "%%~nf upscaled.mp4"
    if errorlevel 1 echo Error upscaling %%a

)
echo %time%
pause

