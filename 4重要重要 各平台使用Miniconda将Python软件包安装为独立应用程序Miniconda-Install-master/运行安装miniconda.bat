echo 以管理员运行
echo 移动文件夹到c盘下，C:\minconda
pause
echo 切换到cd C:\minconda
cd C:\minconda

echo 运行Windows_Install.ps1
call ./Windows_Install.ps1

echo C:\minconda给当前目录设置环境变量
echo C:\minconda\condabin给当前目录设置环境变量
echo C:\minconda\Scripts 给当前目录设置环境变量

echo 运行minconda的shell，解决无法在cmd运行python
call C:\minconda\Scripts\activate.bat C:\minconda
python win_add2path.py
echo 重启
pause