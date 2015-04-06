%{
#include <iostream>
#include <fstream>
using namespace std;
%}

%%

[\n]+ cout<<endl;


%%

int main(int argc,char *argv[]){

    //程序接受一个文件名，然后将输入输出文件重定向
    const char * file_name=*(++argv);
    const char * dest_file_name="dest.txt";
    freopen(file_name,"r",stdin);
    freopen(dest_file_name,"w",stdout);
    yylex();
    fclose(stdout);
    return 0;
}

int yywrap(){return 1;}

