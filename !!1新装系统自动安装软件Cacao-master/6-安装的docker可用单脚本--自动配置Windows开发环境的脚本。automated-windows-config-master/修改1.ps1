# Installs Chocolately onto your machine
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#��װ git
choco install git -y
choco install vscode -y 
choco install docker-desktop -y 
choco install f.lux -y
choco install wox -y
choco install typora -y

#choco install kubernetes-cli -y
#choco install kubernetes-helm -y
choco install 7zip.install -y
choco install vagrant -y

#https://blog.csdn.net/ChinarCSDN/article/details/82914429
#�ȼ�����
#��װ AutoHotkey (Portable)
choco install autohotkey.portable -y

#��װ python
choco install python -y

#Google Chrome (64-bit only)
choco install google-chrome-x64 -y

#��װ firefox
choco install firefox -y

#��װ notepad++
choco install notepadplusplus.install -y

#��ͼ���
choco install ShareX -y

#wsl��gui����
choco install vcxsrv -y

#KDiff3�ٷ�����һ��С��רҵ��ʵ�����ļ��ϲ��Լ�Ŀ¼�ȽϹ���
choco install KDiff3 -y