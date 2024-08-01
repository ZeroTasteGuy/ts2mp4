@echo off
echo %time%
setlocal enabledelayedexpansion



for %%f in (*.TS) do (
    set "output=%%~na_upscaled.mp4"
    ffmpeg -hide_banner -v quiet -i "%%f"
    echo Processing file %%a
    ffmpeg -hide_banner -i "%%f" -vf "scale=2560:1440:flags=lanczos" -c:v hevc_nvenc -r 60 -rc cbr -b:v 150M -preset slow "%%~nf upscaled.mp4"
    if errorlevel 1 echo Error upscaling %%a

)
echo %time%
pause

