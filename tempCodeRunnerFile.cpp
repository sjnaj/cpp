/*
 * @Author: fengsc
 * @Date: 2021-05-21 23:08:19
 * @LastEditTime: 2021-05-22 20:36:44
 */
#include <iostream>
using namespace std;  
/*class CTextClassA  
{  
public:  
    int m_num;  
    CTextClassA(){m_num=0;};  
    ~CTextClassA()  
    {  
       // cout<<"~CTextClassA()"<<endl;  
    }  
    void SetNum(int n)  
    {  
        m_num=n;  
    }  
};  
int main()
{  
    //类¤¨¤  
    CTextClassA *pas=new CTextClassA[4];  
   // CTextClassA *pas_arr[4];  
    for(int i=0;i<4;i++)  
    {  
        pas[i].SetNum(i);  
    //    pas_arr[i]=&pas[i];  
        cout<<"pas"<<i<<":"<<pas[i].m_num<<"\t";  
    }  
    delete pas;  
    return 0;
}  */
class A{
public:
 int a;
 //   A(int a=3){this->a=a;}//防止初始化时将复制构造函数当作构造函数而报错。
 A(){}
    A(const A &a){
        cout<<"Copy constructor called"<<endl;
    }
 //  ~A(){}
   
    
};
void Func(A c,int b){ cout<<b<<endl;cout<<c.a<<endl;}

int main(){
    A* p= new A[4];
   // cout<<p[0].a<<endl;cout<<p[1].a<<endl;
   for(int i=0;i<4;i++)
   p[i].a=i+1;
    Func(p[0],1);
Func(p[1],2);
    delete p;
    return 0;
}