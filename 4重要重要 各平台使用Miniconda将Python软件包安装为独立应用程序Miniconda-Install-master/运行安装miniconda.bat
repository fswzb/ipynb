echo �Թ���Ա����
echo �ƶ��ļ��е�c���£�C:\minconda
pause
echo �л���cd C:\minconda
cd C:\minconda

echo ����Windows_Install.ps1
call ./Windows_Install.ps1

echo C:\minconda����ǰĿ¼���û�������
echo C:\minconda\condabin����ǰĿ¼���û�������
echo C:\minconda\Scripts ����ǰĿ¼���û�������

echo ����minconda��shell������޷���cmd����python
call C:\minconda\Scripts\activate.bat C:\minconda
python win_add2path.py
echo ����
pause