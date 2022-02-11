/*
 * @Author: fengsc
 * @Date: 2021-10-16 21:51:23
 * @LastEditTime: 2021-10-19 14:54:57
 */
#include "src/func.h"
int main()
{
  std::string s = "lalal";
  std::cout.precision(4);
  Complex x(-1, 1), y(1, 2.5);
  Complex z = x + y;
  x.display();
  Complex::display(x.conjugate());
  Complex::display(x + y);
  Complex::display(x - y);
  Complex::display(x * y);
  Complex::display(x / y);
  x.displayExp();
  Complex::display(x *= x);
  Complex::display(1.0 + x);
  Complex array(5);
  array[0] = x;
  //x[1]=x;
  Complex::display(array[0]);
  array[3] = array[2] = array[1] = array[0];
  Complex::display(array[3]);
  Complex::display(array[2] + array[1]);
  std::cout << x << (x / y) << std::endl;
  Complex x1;
  /*std::cin>>x1;
  std::cout<<x1<<std::endl;*/ 
  std::cout << double(y) << std::endl;
  Complex array2(array);
  std::cout << array2[0] << std::endl;
  Complex array3(std::move(array));
  //std::cout<<array[0]<<std::endl;
  std::cout << static_cast<double>(x) + 1.0 << std::endl;
  //std::cout<<(x==1)<<std::endl;
  ComplexPtr ptr=new Complex(x);
  ComplexPtr ptr2(ptr);
  ptr->display();
  ptr2->display();
  // z.display();
}