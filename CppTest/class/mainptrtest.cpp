/*
 * @Author: fengsc
 * @Date: 2021-10-17 14:41:14
 * @LastEditTime: 2021-10-17 16:34:25
 */
#include<iostream>
#include<memory>
int main()
{
    std::shared_ptr<int>p;
    p=std::shared_ptr<int>(new int(10));
    std::shared_ptr<int>p1;
    std::shared_ptr<int>p2(nullptr);
    int *ptr=new int(15);
    std::shared_ptr<int>p3(ptr);
    std::cout <<p1.get()<<' '<<p2.get()<<' '<<p3.get()<<std::endl;
    std::cout <<p1.use_count()<<' '<<p2.use_count()<<' '<<p3.use_count()<<std::endl;
    int *pn=new int (20);
    std::shared_ptr<int>p5(pn);
    std::shared_ptr<int>p4(p3,pn);
    std::cout << *p4<<*p4.get()<<' '<<p4.use_count()<<std::endl;
    std::shared_ptr<int>p6;
    p6=std::make_shared<int>(6);
    std::cout <<*p6<<std::endl;
}
