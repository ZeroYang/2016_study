@echo off
@set unity="D:\Program Files (x86)\Unity\Editor\Unity.exe"
@set svn_bin="C:\Program Files\TortoiseSVN\bin"
@set svn_work=%cd%\Assets
@set svn_work_res=%svn_work%\StreamingAssets\res
@set svn_work_resource=%svn_work_res%\resource

echo ���ڸ�����Ŀ...
%svn_bin%\TortoiseProc.exe /command:update /path:"%svn_work_resource%" /notempfile /closeonend:2
%svn_bin%\TortoiseProc.exe /command:update /path:"%svn_work_res%" /notempfile /closeonend:2
%svn_bin%\TortoiseProc.exe /command:update /path:"%svn_work%" /notempfile /closeonend:2
echo ������Ŀ���!

echo ��������APK�ļ����벻Ҫ�رմ���...
%unity%  -batchmode -quit -nographics -executeMethod Batchmode.BuildAndroid  -logFile %cd%\Editor.log -projectPath %cd% 
echo APK�ļ��������!
pause
