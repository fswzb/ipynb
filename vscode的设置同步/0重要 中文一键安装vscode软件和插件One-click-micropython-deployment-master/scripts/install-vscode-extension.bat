@echo off
for %%a in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist %%a:\nul (
        pushd %%a:\
        echo ���� %%a ��
        for /r %%b in ("*Code.exe") do (
            if "%%~nxb" equ "Code.exe" (
				start  /d "%%~pdb" Code.exe  %~dp0..\lessons
				echo ��ʼ����Ҽ��˵�
				rem �����Ҽ����ļ�
				set openfilemsg="ʹ��VSCode�༭(&Q)"
				set opendirmsg="ʹ��VSCode���ļ���(&Q)"
				set vsdir=%%b
				REG ADD HKCR\Directory\shell\VSCode         /F /t REG_EXPAND_SZ /ve      /d "ʹ��VSCode���ļ���(&Q)"
				REG ADD HKCR\Directory\shell\VSCode         /F /t REG_EXPAND_SZ /v Icon  /d "%%b"
				REG ADD HKCR\Directory\shell\VSCode\command /F /t REG_EXPAND_SZ /ve      /d "\"%%b\" \"%%V\""

				REG ADD HKCR\Directory\Background\shell\VSCode         /F /t REG_EXPAND_SZ /ve      /d "ʹ��VSCode���ļ���(&Q)"
				REG ADD HKCR\Directory\Background\shell\VSCode         /F /t REG_EXPAND_SZ /v Icon  /d "%%b"
				REG ADD HKCR\Directory\Background\shell\VSCode\command /F /t REG_EXPAND_SZ /ve      /d "\"%%b\" \"%%V\""

				REG ADD HKCR\*\shell\VSCode         /F /t REG_EXPAND_SZ /ve     /d "ʹ��VSCode�༭(&Q)"
				REG ADD HKCR\*\shell\VSCode         /F /t REG_EXPAND_SZ /v Icon /d "%%b"
				REG ADD HKCR\*\shell\VSCode\command /F /t REG_EXPAND_SZ /ve     /d "\"%%b\" \"%%1\""
				echo ��ʼ��װvscode���������رձ�����
				rem %%~pdb\bin\code --install-extension  %~dp0.\python.vsix --force
				%%~pdb\bin\code --install-extension ms-python.python
				%%~pdb\bin\code --install-extension  ms-ceintl.vscode-language-pack-zh-hans --force
				%%~pdb\bin\code --install-extension junhuanchen.mpfshell
				echo VSCode�����װ���
				@taskkill /f /im Code.exe
				exit
            )
        )
        popd
    )
)
echo δ��װvscode
pause
