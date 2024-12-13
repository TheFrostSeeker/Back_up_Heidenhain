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

  echo DISCONNECT

  echo CONNECT I 10.32.40.198
  echo REMOTE
  echo BACKUP 60-120 T TNC:\

  echo DISCONNECT

  echo CONNECT I 192.168.32.184
  echo REMOTE
  echo BACKUP Leader_5 T TNC:\

  echo DISCONNECT

  echo CONNECT I 192.168.32.183
  echo REMOTE
  echo BACKUP Leader_7 T TNC:\
) | tnccmd