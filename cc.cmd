@echo off
REM
if NOT EXIST E:\Dep-Gandia mkdir E:\Dep-Gandia
if NOT EXIST E:\Dep-Gandia\RRHH mkdir E:\Dep-Gandia\RRHH
if NOT EXIST E:\Dep-Gandia\Prensa mkdir E:\Dep-Gandia\Prensa
if NOT EXIST E:\Dep-Gandia\Informatica mkdir E:\Dep-Gandia\Informatica
if NOT EXIST E:\Dep-Gandia\Investigacion_desarollo mkdir E:\Dep-Gandia\Investigacion_desarollo
REM
net share Dep-RRHH=E:\Dep-Gandia\RRHH /GRANT:Gandia_GL_RRHH,full
net share Dep-Prensa=E:\Dep-Gandia\Prensa /GRANT:Gandia_GL_Prensa,full
net share Dep-Informatica=E:\Dep-Gandia\Informatica /GRANT:Gandia_GL_Informatica,full
net share Dep-Investigacion_desarollo=E:\Dep-Gandia\Investigacion_desarollo /GRANT:Gandia_GL_Investigacion_desarollo,full	
REM
icacls E:\Dep-Gandia\RRHH /GRANT gandia\Gandia_GL_RRHH:(RX)
icacls E:\Dep-Gandia\Prensa /GRANT gandia\Gandia_GL_Prensa:(RX)
icacls E:\Dep-Gandia\Informatica /GRANT gandia\Gandia_GL_Informatica:(RX)
icacls E:\Dep-Gandia\Investigacion_desarollo /GRANT gandia\Gandia_GL_Investigacion_desarollo:(RX)
REM
icacls E:\Dep-Gandia /inheritance:d
icacls E:\Dep-Gandia\RRHH /inheritance:d
icacls E:\Dep-Gandia\Prensa /inheritance:d
icacls E:\Dep-Gandia\Informatica /inheritance:d
icacls E:\Dep-Gandia\Investigacion_desarollo /inheritance:d
REM
icacls E:\Dep-Gandia  /remove:g Usuarios
icacls E:\Dep-Gandia\RRHH  /remove:g Usuarios
icacls E:\Dep-Gandia\Prensa  /remove:g Usuarios
icacls E:\Dep-Gandia\Informatica  /remove:g Usuarios
icacls E:\Dep-Gandia\Investigacion_desarollo /remove:g Usuarios
REM
icacls E:\Dep-Gandia\RRHH /GRANT gandia\Gandia_GL_Lectura:(R)
icacls E:\Dep-Gandia\Prensa /GRANT gandia\Gandia_GL_Lectura:(R)
icacls E:\Dep-Gandia\Informatica /GRANT gandia\Gandia_GL_Lectura:(R)
icacls E:\Dep-Gandia\Investigacion_desarollo /GRANT gandia\Gandia_GL_Lectura:(R)
