echo ��360������������廪Դ��miniconda������ҳ
@start "360se.exe" "https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/"

rem@start "chrome.exe" "https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/"

pause
echo ������ɺ�װ

echo ����condaԴ
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/
conda config --set show_channel_urls yes

echo ͨ��conda��װpip����
conda install pip -y

echo ����pipԴ
pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple pip -U
pip3 config set global.index-url http://mirrors.aliyun.com/pypi/simple
pip3 config set install.trusted-host mirrors.aliyun.com

echo ��װjupyter notebook
pip3 install jupyter notebook -y

pause


