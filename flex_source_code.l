%{
#include <iostream>
#include <fstream>
using namespace std;
%}

%%

[\n]+ cout<<endl;


%%

int main(int argc,char *argv[]){

    //�������һ���ļ�����Ȼ����������ļ��ض���
    const char * file_name=*(++argv);
    const char * dest_file_name="dest.txt";
    freopen(file_name,"r",stdin);
    freopen(dest_file_name,"w",stdout);
    yylex();
    fclose(stdout);
    return 0;
}

int yywrap(){return 1;}
