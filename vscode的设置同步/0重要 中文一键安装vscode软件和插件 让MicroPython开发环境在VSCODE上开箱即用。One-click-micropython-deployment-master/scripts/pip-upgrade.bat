@echo off
echo ���ڼ�� python pip �����Ժ�...
for /f "delims=" %%t in ('pip -V') do set str=%%t
echo %str% | find /c /i "site-packages\pip" >nul && set pip_installed=1 || set pip_installed=0
if %pip_installed% equ 1 (
	echo ���� pip ��ʼ����pipԴΪ����Դ
	@md %userprofile%\pip
	@copy %~dp0.\pip.ini %userprofile%\pip
	echo ��ʼ����pip�汾
	python -m pip install --upgrade pip --user
	python -m pip install -r %~dp0.\requirements.txt --user
	pip install mpfshell-lite
)
