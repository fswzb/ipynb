@echo off
::��ȡ��ǰ�ļ����ڵ�Ŀ¼�ľ���·��
set "thispath=%~dp0"
::ɾ��֮���·���ָ����š�\��
set "thispath=%thispath:~0,-1%"
echo ��ǰ�ļ����ڵ�Ŀ¼�ľ���·��:%thispath%
::��ȡpath�����������Զ��������
set mypath=%path%
::��path��������д����ʱ�ļ���,�Ա�����ʹ��findstr������в���
echo %mypath% > temp.txt
::����ʱ�ļ��в�����û�е�ǰ·��
find "%thispath%" temp.txt
::������ҵ���fin�����0,���û���ҵ�find�����1
if %errorlevel% == 0 (
	echo path���������� �Ѿ������� ��ǰ·��%thispath%
	echo ���򷵻���:%errorlevel%
) else (
	echo path���������� û�а���   ��ǰ·��%thispath%
	echo ���򷵻���:%errorlevel%
	::׷�ӵ�ǰ�ļ�����Ŀ¼��·����path����������
	setx /m "path" "%thispath%;%path%"
)	
::ɾ����ʱ�ļ�
del temp.txt
pause
