#include <iostream>
#include <fstream>
#include <dir.h>
using namespace std;



int main(int argc,char *argv[]){

    //�������һ���ļ�����Ȼ����������ļ��ض���
    const char * file_name=*(++argv);
    const char * dest_file_name="dest.txt";
    freopen(file_name,"r",stdin);
    freopen(dest_file_name,"w",stdout);

    //��ʼ�����ַ�  ����
    string temp;
    while(cin>>temp)
        cout<<temp;
    fclose(stdout);


return 0;}
