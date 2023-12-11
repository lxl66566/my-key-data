@echo off
DOSKEY ls=dir $*
DOSKEY alias=notepad %USERPROFILE%\alias.cmd
DOSKEY gp=git pull
