/*
 * @Author: fengsc
 * @Date: 2021-05-27 16:05:35
 * @LastEditTime: 2021-08-15 20:35:18
 */
#include <iostream>
#include <limits.h>
#include <string>
#include <cstdlib>
#include <cstring>
#include <sstream>
using namespace std;
int main(int argc, char **argv)
{
    string t="-1";
    /*stringstream ss(t);
   // cout<<ss<<endl;
    while(getline(cin,t,'/'))
    {
        cout<<t<<endl;
    }
    cout <<"la";*/
    cout<<stoi(t.c_str())<< endl;
    
   // cout << strtol(s.c_str(), &stop, 16) <<endl<<stop<< endl;
    return 0;
}