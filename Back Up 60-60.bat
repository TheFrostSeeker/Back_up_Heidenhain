@echo off

CD C:\ProgramTemp\

mkdir "%date:~6,4%"
CD "%date:~6,4%"

mkdir "%date:~3,2%"
CD "%date:~3,2%"

mkdir "%date:~0,2%"
CD "%date:~0,2%"

(
  echo CONNECT I 192.168.32.190
  echo REMOTE
  echo BACKUP 60-60 T TNC:\
) | tnccmd