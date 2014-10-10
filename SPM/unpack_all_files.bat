@echo off
for /r "D:\fcon1000\Cambridge\" %%I in ("*.nii.gz") do (
  "C:\Program Files\7-Zip\7z.exe" x -y -o"%%~dpI" "%%~fI" 
)
pause