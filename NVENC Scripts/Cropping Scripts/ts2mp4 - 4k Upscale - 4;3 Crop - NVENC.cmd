@echo off
echo %time%
setlocal enabledelayedexpansion



for %%f in (*.TS) do (
    set "output=%%~na_upscaled.mp4"
    echo Processing file %%a
    ffmpeg -hide_banner -i "%%f" -vf "crop=960:720:160:0,scale=2880:2160:flags=lanczos" -c:v hevc_nvenc -r 60 -rc cbr -b:v 150M -preset slow "%%~nf upscaled.mp4"
    if errorlevel 1 echo Error upscaling %%a

)
echo %time%
pause

