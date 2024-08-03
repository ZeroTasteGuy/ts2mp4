for %%f in (*.TS) do (
  ffmpeg -v quiet -i "%%f" -c:v copy "%%~nf.mp4"
)