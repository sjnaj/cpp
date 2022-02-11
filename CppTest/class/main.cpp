/*
 * @Author: fengsc
 * @Date: 2021-10-06 22:37:32
 * memmntalLastEditTime: 2021-10-07 00:22:48
 */
#include <iostream>
#include <algorithm>
#include <stdio.h>
#include <typeinfo>
#include <cstring>
#include <vector>
//#include <cxxabi.h>
#include "src/func.h"
/*
template <unsigned int M, unsigned int N>
int compare(const char (&p)[M], const char (&q)[N])
{
  return strcmp(p, q);
}
template <double *p>
void func()
{
  std::cout << *p << std::endl;
}

int main()
{
  std::pair<int,int> p=std::minmax({1,2,3,4,5});
  std::cout<<p.first<<' '<<p.second<<std::endl;
  static double x = 1;
  unsigned i=0;
  int m = std::max({1, 2, 3, 4, 5});
  std::cout<<m;

  std::cout << compare("lalal", "lalal");
    func<&x>();
}*/
//#if 0

enum Example : unsigned char
{
  a = 10,
  b,
  c,
  d,
  e,
  f,
  g,
  h
};
class Virtual
{
public:
  virtual ~Virtual() = default;
  virtual void func() = 0;
  virtual void func2() = 0;
  virtual void func3() = 0;
};
void Virtual::func()
{
  std::cout << "This is default func" << std::endl;
}
class Entity : public Virtual
{
protected:
  int a : 4, b : 4;
  const double d = 1.0;

public:
  Entity(int x, int y) : a(x), b(y) {}
  Entity() { std::cout << "lalala" << std::endl; }
  void func() override { std::cout << a << ' ' << "This is Entity" << std::endl; }
  void func(int x) { std::cout << x << std::endl; }
  void func2() { std::cout << "func2()" << std::endl; }
  void func3() { std::cout << "func3()" << std::endl; }
  static const int x = 1, y = 2;
  const float z = 1.0;
  const static int w = 1;
  static constexpr float w1 = 1;
  constexpr static int z1 = 1;
  int array[z1];
  static void Print()
  {
    std::cout << x << ' ' << y << std::endl;
  }
  virtual ~Entity() = default;
};
int n=10;


class Derive : public Entity
{
private:
  int x, y;
  mutable int m_cout = 0;
  //int a;
public:
  using Entity::func;
  void func(int x) { std::cout << x + 1 << std::endl;}
  void func() override { std::cout << a << ' ' << "This is Derive" << std::endl; }
  int getVal(Derive d) const
  {
    m_cout++;
    d.a = d.x = d.y = 666;
    return d.a;
  }
  Derive(int x, int y)
  {
    this->x = x;
    this->y = y;
    a = 10;
  }
  Derive(int x) { a=x; }
  Derive() = default;
  ~Derive(){};
};
//int Entity::x, Entity::y;
int main()

{
  /*Example p = a;
  std::cout << p << std::endl;*/
  /* Entity entity{1, 2};
  entity.x = 10;
  entity.y = 20;
  Entity::Print();
  Entity::x = 15;
  Entity::y = 25;
  entity.Print();*/
  /*  std::cout << *(int *)&entity << std::endl;
    std::cout << *(int *)((char*)&entity+sizeof(int)) << std::endl;*/
  //std::cout << entity.a << ' ' << entity.b << std::endl;
  /*const Derive derive(3);
  std::cout << derive.getVal() << std::endl;
  Derive derive1(4);
  std::cout << derive1.getVal() << std::endl;*/
  Derive derive{3, 4};

  std::cout << derive.getVal(derive) << std::endl;
  derive.func(2);
  derive.func();
  Virtual *p = new Entity(1, 2);
  void *vptr = (void *)*(int64_t *)p;
  //std::cout <<sizeof p<<std::endl;
  p->func();
  p = new Derive(3, 4);
  void *vptr1 = (void *)*(unsigned long *)p;
  // std::cout <<sizeof p<<std::endl;
  Derive *q = new Derive(5, 6);
  std::cout << sizeof q << std::endl;
  p->func();
  static_assert(noexcept(p->~Virtual()), "Ouch!");
  auto x2 = [=]()mutable  -> std::vector<int>  {n=100; return {1, 2}; };
  x2();
  std::cout <<n<< std::endl;
  
  /*const std::type_info &Info(typeid(p->func()));
  std::cout << Info.name() << '\t' << Info.hash_code() << std::endl;
  float a;
  const std::type_info &Info1(typeid(a));
  std::cout << Info1.name() << '\t' << Info1.hash_code() << std::endl;
  const std::type_info &Info2(typeid(derive));
  std::cout << Info2.name() << '\t' << Info2.hash_code() << std::endl;
  */
  delete p;
  delete q;
}
//#endif
