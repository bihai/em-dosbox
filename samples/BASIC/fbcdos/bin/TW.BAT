@echo off
cls
if "%ramdrive%"=="" goto _twer
if "%1"=="/q" goto qtw
if "%1"=="/Q" goto qtw
if "%1"=="/s" goto sl
if "%1"=="/S" goto sl
pkunzip -O A:\soft\twx.zip %ramdrive%\ >NUL
lh %ramdrive%\tway >nul
echo.
echo �����������ɹ�,��Shift��ʾ������״̬��,ʹ��TW /S �������뷨. TW /Q �˳�.
goto end 

:_twer
echo Error: Not found Ramdrive,Procedures not running!
goto end

:qtw
tway /q >nul
goto end

:sl
quit >nul
pkunzip -O A:\soft\twx.zip %ramdrive%\ >NUL
if not exist %ramdrive%\data md %ramdrive%\data >nul
copy /y %ramdrive%\py.mb %ramdrive%\data >nul
copy /y %ramdrive%\wb.mb %ramdrive%\data >nul
lh %ramdrive%\tway >nul
%ramdrive%\key py wb >nul
echo.
echo ����֧��ϵͳ���������뷨����ɹ�. TW /Q �˳�����֧��.
echo ���뷨�л�:  Alt +  F1 ��λ   F2 Ӣ��   F3 ƴ��   F4 ���   F5 ˫ƴ

:end