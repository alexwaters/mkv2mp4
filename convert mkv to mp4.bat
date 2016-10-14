@echo off
TITLE CONVERT ALL FILE VIDEO TO MP4
set PATH=%PATH%;C:\ffmpeg
set i = 1

for %%f in (*.mkv) do ffmpeg -i "%%f" -map 0 -vcodec copy -acodec copy "%%~nf.mp4"
pause